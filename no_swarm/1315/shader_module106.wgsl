struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -250f;

var<private> global1: Struct_2;

var<private> global2: array<f32, 31> = array<f32, 31>(-936f, 946f, -1469f, 422f, 504f, -446f, -501f, -315f, 629f, 285f, -1027f, 1245f, -689f, 1878f, 1848f, 1000f, -572f, -1398f, 1417f, 1704f, 1376f, 128f, 275f, 128f, -107f, -1730f, -1653f, 1010f, -846f, 1590f, 727f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.e.xz, select(_wgslsmith_add_vec2_i32(vec2<i32>(~13477i, 1i), u_input.e.yx), ~(vec2<i32>(14455i, u_input.c) << (u_input.b.wz % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(arg_3.d.a.xz, global1.a.a.zx) % vec2<u32>(32u)), false));
    var var_1 = select(arg_3.c.b, select(select(select(vec2<bool>(arg_3.a.c, global1.a.b.x), arg_3.a.b, !arg_0), select(arg_3.a.b, vec2<bool>(true, true), false), vec2<bool>(true, true)), !select(select(global1.d.b, vec2<bool>(false, true), true), !vec2<bool>(arg_0, false), global1.a.b.x), false), global1.c.c == (all(vec4<bool>(false, false, false, global1.a.c)) & (0u < (arg_3.b ^ 42958u))));
    var var_2 = Struct_2(Struct_1(u_input.b.zzz, arg_3.c.b, true), reverseBits(abs(u_input.b.x)), Struct_1(~countOneBits(arg_3.a.a) & vec3<u32>(global1.a.a.x, ~u_input.b.x, u_input.d), !(!select(vec2<bool>(arg_0, true), vec2<bool>(true, false), false)), any(vec3<bool>(select(global1.a.b.x, true, var_1.x), true, arg_0 | false))), global1.c);
    var var_3 = Struct_2(arg_3.c, 19003u, Struct_1(~reverseBits(vec3<u32>(u_input.b.x, 44153u, var_2.b) | u_input.b.wwx), select(vec2<bool>(all(vec3<bool>(var_1.x, false, global1.c.c)), true), vec2<bool>(var_1.x, arg_2 != arg_2), var_1.x), arg_3.d.b.x), Struct_1(reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(arg_3.d.a, vec3<u32>(4294967295u, var_2.d.a.x, 0u)), var_2.a.a, vec3<u32>(1u, global1.a.a.x, u_input.b.x))), vec2<bool>(all(select(vec4<bool>(global1.d.b.x, global1.a.c, false, arg_0), vec4<bool>(true, true, var_1.x, arg_0), true)), arg_0), true));
    let var_4 = ~(~(~vec2<u32>(u_input.d, u_input.d << (u_input.d % 32u))));
    return -1264f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(select(global1.a.b.x, 1u >= (global1.b << (4294967295u % 32u)), global1.d.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2035f, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)]))))), 17296u, Struct_2(Struct_1(max(u_input.b.yxx, global1.a.a), vec2<bool>(global1.c.c, global1.a.c), global1.d.c), 26134u, Struct_1(~global1.c.a, vec2<bool>(true, true), true), global1.d))), 424f);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(global1.c.a, ~vec3<u32>(u_input.d, 4294967295u, 1u)), 85082u), ~(global1.a.a.x << (abs(global1.a.a.x) % 32u))), 31u)];
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u | global1.a.a.x, global1.b), (24912u & (u_input.b.x ^ global1.c.a.x)) | 4294967295u), u_input.b.x << (global1.a.a.x % 32u));
    var var_3 = Struct_1(vec3<u32>(0u, ~global1.a.a.x, max(_wgslsmith_dot_vec2_u32(reverseBits(global1.a.a.zy), select(global1.a.a.yx, vec2<u32>(1u, global1.c.a.x), vec2<bool>(global1.a.c, true))), abs(_wgslsmith_add_u32(u_input.d, 0u)))), !select(select(!global1.c.b, select(global1.d.b, global1.d.b, global1.a.b), global1.a.c), global1.c.b, vec2<bool>(true, true)), true || !select(false, all(vec3<bool>(false, global1.a.b.x, true)), any(vec3<bool>(true, global1.a.b.x, global1.d.b.x))));
    var_1 = var_0;
    return Struct_2(global1.d, ~4294967295u, global1.a, Struct_1(_wgslsmith_sub_vec3_u32(u_input.b.wzx, ~global1.c.a) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1u, 5275u), vec3<u32>(24708u, var_3.a.x, 1u)), var_3.b, true));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = !((~_wgslsmith_clamp_u32(global1.b, arg_0.d.a.x, global1.c.a.x) >> (~u_input.d % 32u)) >= (8502u << (u_input.d % 32u)));
    return 227f;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(func_4(func_2()));
    var var_0 = Struct_2(func_2().c, ~_wgslsmith_mod_u32(~global1.c.a.x, 0u), arg_0, func_2().c);
    var var_1 = (u_input.a.x << (14395u % 32u)) & -2147483647i;
    var var_2 = arg_1.zz;
    let var_3 = arg_0;
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~(~(~u_input.b.x)), 31u)];
    var var_1 = vec4<f32>(global2[_wgslsmith_index_u32(~arg_2.a.x, 31u)], -742f, _wgslsmith_f_op_f32(select(-376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2.a.x, 31u)]))), true || any(vec3<bool>(arg_2.b.x, global1.d.b.x, arg_2.c)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(select((arg_2.a.x >> (57612u % 32u)) << (4294967295u % 32u), reverseBits(2972u), arg_0.a.b.x | (arg_0.a.b.x | arg_2.c)), arg_2.a.x), 31u)]);
    let var_2 = u_input.b;
    global0 = global2[_wgslsmith_index_u32(func_1(arg_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yyy + var_1.wzw) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -102f, global2[_wgslsmith_index_u32(10450u, 31u)]))), _wgslsmith_f_op_vec3_f32(max(var_1.yzw, _wgslsmith_f_op_vec3_f32(round(var_1.zyz)))), select(!vec3<bool>(global1.c.b.x, arg_0.a.c, arg_0.d.b.x), vec3<bool>(arg_2.b.x, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, arg_0.c.c), vec3<bool>(global1.c.b.x, global1.d.b.x, arg_2.c))))))).c.a.x, 31u)];
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-311f)) - -877f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 31u)] * 382f))), all(arg_0.c.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 31u)])), -1314f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, var_1.x, -472f) + vec4<f32>(var_1.x, -1458f, global2[_wgslsmith_index_u32(global1.a.a.x, 31u)], var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, -230f, global2[_wgslsmith_index_u32(36660u, 31u)], var_1.x)))))));
    return !select(vec2<bool>(true, arg_2.c), vec2<bool>(arg_0.d.b.x, any(func_1(arg_2, var_1.xxx).c.b)), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(abs(~(vec3<u32>(u_input.d, global1.a.a.x, 0u) | u_input.b.wyz)), select(select(vec2<bool>(true, true), vec2<bool>(global1.d.b.x, global1.d.b.x), !global1.d.c), func_5(func_1(global1.c, vec3<f32>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(162u, 31u)], global2[_wgslsmith_index_u32(global1.a.a.x, 31u)])), select(vec3<i32>(u_input.a.x, 18045i, -33331i), vec3<i32>(u_input.e.x, 1i, -42241i), vec3<bool>(global1.a.b.x, true, global1.d.b.x)), Struct_1(global1.c.a, vec2<bool>(false, global1.a.b.x), true), vec4<i32>(-1i, u_input.e.x, -1i, u_input.a.x) & vec4<i32>(u_input.e.x, u_input.a.x, -31336i, 1i)), any(!vec3<bool>(false, global1.c.c, false))), false & func_2().c.b.x), _wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(global1.b & 1u, global1.b, ~u_input.d)), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, global1.b) << (global1.d.a.x % 32u), 42128u)), global1.d, global1.c);
    global2 = array<f32, 31>();
    global2 = array<f32, 31>();
    global0 = global2[_wgslsmith_index_u32(global1.a.a.x, 31u)];
    global2 = array<f32, 31>();
    let var_1 = !(!(!vec4<bool>(global1.c.c, var_0.a.b.x, true, global2[_wgslsmith_index_u32(44441u, 31u)] != 1083f)));
    global1 = func_1(global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(849f, global2[_wgslsmith_index_u32(var_0.d.a.x, 31u)], global2[_wgslsmith_index_u32(global1.a.a.x, 31u)]))), vec3<f32>(global2[_wgslsmith_index_u32(global1.c.a.x, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], -101f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 31u)], 1464f, global2[_wgslsmith_index_u32(13014u, 31u)]), vec3<f32>(global2[_wgslsmith_index_u32(1u, 31u)], 189f, global2[_wgslsmith_index_u32(global1.d.a.x, 31u)]))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(976f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]) * vec3<f32>(2546f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 346f)))))));
    global2 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.a.x, 16052u);
}

