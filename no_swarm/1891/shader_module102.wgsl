struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.x)));
    return vec4<bool>(arg_1.a.x, true, !(!arg_1.a.x || !all(arg_1.e)), !all(arg_1.d));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(31635u, 0u), 23u)];
    let var_1 = Struct_2(vec2<bool>(!any(func_3(vec4<i32>(global1.d.x, 2147483647i, u_input.a.x, u_input.a.x), Struct_2(vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_0.e, 23u)], global0[_wgslsmith_index_u32(global1.e, 23u)], vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)), vec2<f32>(152f, 461f))), all(vec3<bool>(false, true, true)) | func_3(select(global1.c, var_0.c, vec4<bool>(false, false, false, false)), Struct_2(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], vec3<bool>(false, false, true), vec4<bool>(false, false, true, false)), global1.b.zx).x), global0[_wgslsmith_index_u32(~4294967295u, 23u)], Struct_1(reverseBits(~(var_0.a | 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(global1.b.x, 304f, 661f))))), abs(vec4<i32>(-30548i, -1i, -10865i, var_0.c.x)) >> ((min(vec4<u32>(global1.e, 4294967295u, 45928u, 2134u), vec4<u32>(global1.e, 1u, 0u, 30796u)) >> (abs(vec4<u32>(50094u, 26049u, 1u, 51274u)) % vec4<u32>(32u))) % vec4<u32>(32u)), -_wgslsmith_add_vec2_i32(-global1.d, ~vec2<i32>(15315i, var_0.a)), global1.e), func_3(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 10318i), 1i << (firstLeadingBit(var_0.e) % 32u), 0i, -abs(6831i)), Struct_2(vec2<bool>(true, true), global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 23u)], Struct_1(-global1.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, arg_0, var_0.b.x)), vec4<i32>(2147483647i, 0i, 13047i, u_input.a.x), var_0.d, reverseBits(24914u)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec4<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(true, false)), func_3(vec4<i32>(17724i, -22435i, global1.d.x, var_0.d.x), Struct_2(vec2<bool>(false, true), global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)], vec3<bool>(true, false, true), vec4<bool>(false, true, false, false)), var_0.b.yx).x)), _wgslsmith_f_op_vec2_f32(sign(global1.b.yy))).wxx, vec4<bool>(true, select(all(vec3<bool>(false, false, false)) != true, all(vec4<bool>(false, false, true, false)) || false, !all(vec3<bool>(false, true, false))), any(vec2<bool>(true, any(vec4<bool>(true, false, false, true)))), true && any(vec2<bool>(true, true))));
    var var_2 = select(func_3(select(vec4<i32>(var_0.a, var_0.d.x, global1.d.x, u_input.a.x) | max(vec4<i32>(global1.c.x, var_0.d.x, -13732i, 15205i), vec4<i32>(11066i, 19531i, global1.a, 0i)), vec4<i32>(_wgslsmith_add_i32(0i, var_0.a), 0i, abs(var_1.c.a), ~(-39662i)), true), Struct_2(var_1.a, global0[_wgslsmith_index_u32(var_1.b.e, 23u)], Struct_1(global1.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.b.x, 951f) + global1.b), vec4<i32>(global1.a, 0i, 0i, 79044i), global1.c.yw, 1u), !vec3<bool>(var_1.d.x, var_1.e.x, var_1.a.x), !var_1.e), _wgslsmith_f_op_vec2_f32(select(global1.b.xy, var_0.b.yz, func_3(vec4<i32>(1i, var_0.c.x, var_0.d.x, 55364i) ^ vec4<i32>(var_1.c.c.x, -31976i, u_input.a.x, 2147483647i), Struct_2(var_1.a, Struct_1(3369i, global1.b, vec4<i32>(global1.c.x, var_0.a, global1.a, 1i), vec2<i32>(var_0.c.x, 2147483647i), global1.e), var_1.c, vec3<bool>(var_1.a.x, var_1.e.x, var_1.a.x), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec2_f32(var_0.b.yz * var_1.b.b.yy)).zz))), var_1.e, any(select(!(!vec2<bool>(false, var_1.e.x)), vec2<bool>(true, var_1.e.x), select(func_3(vec4<i32>(global1.c.x, u_input.a.x, var_0.c.x, 1i), var_1, vec2<f32>(global1.b.x, -245f)).xx, !vec2<bool>(var_1.e.x, var_1.a.x), var_1.e.wy))));
    var_0 = var_1.c;
    let var_3 = 0i;
    return Struct_2(vec2<bool>(var_1.e.x, any(select(func_3(var_0.c, Struct_2(var_2.yz, var_1.c, Struct_1(var_3, var_1.b.b, vec4<i32>(var_3, var_3, -2147483647i, 48470i), vec2<i32>(31389i, var_1.b.a), 25400u), var_1.e.xxz, vec4<bool>(var_2.x, var_2.x, var_1.e.x, var_2.x)), var_1.b.b.xy).yx, select(vec2<bool>(var_2.x, var_2.x), var_2.wx, var_1.d.yz), any(var_2.yw)))), global0[_wgslsmith_index_u32(4294967295u, 23u)], var_1.c, select(vec3<bool>(firstLeadingBit(54938i) >= u_input.a.x, !any(var_1.a), !any(var_1.e.xyy)), var_2.zyx, vec3<bool>(true, !var_2.x, false)), vec4<bool>((true || any(var_2.xyz)) | any(vec2<bool>(var_1.a.x, var_1.e.x)), !all(var_1.e.xyx) & var_1.a.x, global1.e != (~global1.e << (var_1.b.e % 32u)), true));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.x, 155f), _wgslsmith_f_op_f32(1000f - -834f))))));
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_2(vec2<bool>(false, all(var_0.d)), Struct_1(firstLeadingBit(_wgslsmith_mult_i32(-52364i, _wgslsmith_mult_i32(u_input.a.x, -2147483647i))), global1.b, (-global1.c >> (arg_0 % vec4<u32>(32u))) >> (abs(vec4<u32>(68955u, 0u, 1u, 4294967295u)) % vec4<u32>(32u)), global1.c.yy, _wgslsmith_add_u32(7345u, firstTrailingBit(var_0.b.e))), func_2(_wgslsmith_f_op_f32(max(global1.b.x, 345f))).b, vec3<bool>(true, var_0.d.x, func_2(_wgslsmith_f_op_f32(abs(var_0.c.b.x))).d.x), !(!func_3(_wgslsmith_sub_vec4_i32(var_0.b.c, vec4<i32>(-2147483647i, var_0.c.c.x, -1i, -1i)), Struct_2(var_0.d.zx, Struct_1(-1i, global1.b, var_0.c.c, vec2<i32>(u_input.a.x, global1.d.x), global1.e), var_0.b, vec3<bool>(var_0.d.x, false, false), vec4<bool>(var_0.e.x, false, var_0.d.x, var_0.e.x)), var_0.c.b.yy)));
    let var_2 = func_2(1000f);
    let var_3 = func_2(global1.b.x).c;
    return vec2<bool>(func_3(var_1.c.c, var_0, vec2<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(abs(-762f)))).x || ((_wgslsmith_clamp_i32(global1.d.x, -1i, var_3.c.x) & _wgslsmith_add_i32(1i, -7121i)) <= -(global1.a ^ 1i)), (func_2(_wgslsmith_f_op_f32(var_1.b.b.x + 1000f)).b.b.x == -1072f) && (func_2(_wgslsmith_f_op_f32(f32(-1f) * -295f)).a.x && false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_0 = -2147483647i >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.e, 4294967295u, 1u, global1.e), ~vec4<u32>(u_input.d.x, 123867u, 27514u, 1u)), vec4<u32>(_wgslsmith_div_u32(u_input.c.x >> (u_input.c.x % 32u), global1.e), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 3273u, 54388u, 1u), vec4<u32>(1u, 20744u, 8926u, 4294967295u), false), vec4<u32>(7015u, u_input.d.x, u_input.b, 4294967295u)), global1.e, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.b, u_input.c.x)))) % 32u);
    var var_1 = select(func_1(vec4<u32>(global1.e, 1u, global1.e, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, global1.e, 1u, 42200u), ~vec4<u32>(0u, u_input.b, 4294967295u, 1u)))), !func_2(global1.b.x).a, false);
    var var_2 = global1.c.wzy | global1.c.wyy;
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(var_2.x, -1i), vec2<i32>(29746i, var_2.x)) & reverseBits(~global1.c.yy), u_input.a.zx), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i & global1.d.x, 32369i, firstTrailingBit(var_2.x)), min(abs(23921i), u_input.a.x), global1.c.x, -923f, vec4<u32>(39367u, 1u, (global1.e >> (global1.e % 32u)) & global1.e, u_input.d.x & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c)) ^ vec4<u32>(~_wgslsmith_div_u32(0u, u_input.b), 12649u, abs(_wgslsmith_mod_u32(u_input.c.x, 1u)), reverseBits(u_input.c.x)));
}

