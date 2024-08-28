struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(2147483647i, -1i, i32(-2147483648), -1i, -30217i, -29367i, -32453i, 1i, 2147483647i, 42207i, -62434i, i32(-2147483648), 28970i, 50763i, 1i, 15186i, -35960i, -17157i, i32(-2147483648), 38700i);

var<private> global1: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true));

var<private> global2: array<i32, 17>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = -404f;
    global2 = array<i32, 17>();
    global2 = array<i32, 17>();
    var_0 = _wgslsmith_f_op_f32(trunc(940f));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(189f, 123f))));
    return 66106u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32) -> vec2<u32> {
    let var_0 = Struct_1(abs(u_input.d.x), abs(vec4<i32>(-8500i, _wgslsmith_clamp_i32(~(-1i), -22445i, global0[_wgslsmith_index_u32(u_input.d.x, 20u)] & arg_2), -14985i, global0[_wgslsmith_index_u32(37066u, 20u)] << ((10398u & u_input.d.x) % 32u))), func_3());
    global2 = array<i32, 17>();
    var var_1 = vec3<i32>(firstLeadingBit(var_0.b.x), global2[_wgslsmith_index_u32(4294967295u, 17u)], var_0.b.x);
    var var_2 = ~(-2147483647i);
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-899f, -265f)) + _wgslsmith_f_op_f32(ceil(2502f))), _wgslsmith_f_op_f32(f32(-1f) * -466f))), 1234f));
    return _wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.d.zy);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = (_wgslsmith_clamp_vec2_i32(~vec2<i32>(-44359i, -50223i) >> (func_2(vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], -2147483647i, global2[_wgslsmith_index_u32(arg_1, 17u)]), vec3<bool>(false, true, true), u_input.a) % vec2<u32>(32u)), ~abs(vec2<i32>(-1i, -29356i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-5994i, global2[_wgslsmith_index_u32(6520u, 17u)]) >> (u_input.c.zx % vec2<u32>(32u)), vec2<i32>(arg_3, -1i), vec2<i32>(global2[_wgslsmith_index_u32(78957u, 17u)], global2[_wgslsmith_index_u32(arg_1, 17u)]))) & -min(vec2<i32>(27842i, u_input.a) << (u_input.c.yy % vec2<u32>(32u)), -vec2<i32>(arg_3, -1i))) >> (u_input.d.xz % vec2<u32>(32u));
    let var_1 = select(vec4<i32>(_wgslsmith_div_i32(32549i << (u_input.d.x % 32u), 0i), i32(-1i) * -2147483647i, abs(-1644i & global2[_wgslsmith_index_u32(arg_1, 17u)]), -reverseBits(u_input.b)) | firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.d.x, 20u)], arg_3, -11758i), abs(-2147483647i), global2[_wgslsmith_index_u32(1u, 17u)], 51417i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, select(global0[_wgslsmith_index_u32(0u, 20u)], var_0.x, true), ~15852i, i32(-1i) * -60970i) | vec4<i32>(u_input.b, 1i, _wgslsmith_mult_i32(15737i, var_0.x), global2[_wgslsmith_index_u32(1u, 17u)] ^ -30825i), max(countOneBits(~vec4<i32>(u_input.a, 0i, global0[_wgslsmith_index_u32(arg_0, 20u)], global2[_wgslsmith_index_u32(4294967295u, 17u)])), ~vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 20u)], var_0.x, -26324i))), vec4<bool>(true, false, all(global1[_wgslsmith_index_u32(~1u, 31u)]), !any(vec3<bool>(true, true, true))));
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), arg_2)), arg_2));
    let var_3 = select(true, !(true || select(true, any(vec2<bool>(true, false)), true)), true);
    let var_4 = Struct_2(var_2.a);
    return var_1.x | firstTrailingBit(~(i32(-1i) * -48353i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(abs(28133i << (u_input.c.x % 32u)) < ~func_1(4294967295u, _wgslsmith_div_u32(u_input.d.x, 0u), _wgslsmith_f_op_f32(sign(176f)), u_input.a));
    let var_1 = vec2<bool>(true, all(vec4<bool>(false, true, any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)))));
    let var_2 = any(vec3<bool>(any(select(vec3<bool>(var_1.x, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true))), true, func_3() > u_input.c.x));
    var var_3 = Struct_1(~(~u_input.d.x & 27740u), _wgslsmith_sub_vec4_i32(vec4<i32>(-6971i ^ u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, 0u), ~98422u, func_3()), 20u)], countOneBits(abs(11023i)), ~global0[_wgslsmith_index_u32(10157u, 20u)]), -vec4<i32>(_wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), max(1i, global0[_wgslsmith_index_u32(u_input.d.x, 20u)]), -19127i >> (u_input.d.x % 32u), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_div_u32(~(~1u), ~abs(_wgslsmith_add_u32(10868u, 10446u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.xz, var_3.b.x, var_3.c, ~var_3.c);
}

