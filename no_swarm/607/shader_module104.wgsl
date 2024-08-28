struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, false, true, true, false, false, true, false, true, true, false, true, false, true, false, true, true, true, false, true, true, false, true, false, false, true, true, false, false, true, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = false;
    var var_1 = arg_0;
    return var_1.b.b.e;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = ~2147483647i;
    global0 = array<bool, 31>();
    var var_1 = any(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)], true, global0[_wgslsmith_index_u32(arg_0, 31u)])), vec4<bool>(false, any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], true)), true, true), vec4<bool>(global0[_wgslsmith_index_u32(5838u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)] != true, true, true))) && global0[_wgslsmith_index_u32(func_3(Struct_4(countOneBits(vec3<i32>(u_input.a.x, u_input.b.x, u_input.d) ^ vec3<i32>(u_input.c, 53560i, u_input.b.x)), Struct_2(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], global0[_wgslsmith_index_u32(11696u, 31u)], global0[_wgslsmith_index_u32(arg_0, 31u)]), Struct_1(vec4<f32>(-560f, 720f, -659f, 706f), vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], false, false), 26016i, vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], true, global0[_wgslsmith_index_u32(0u, 31u)], false), 0u), u_input.c < 28782i, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], true, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]))), Struct_2(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], false, false), Struct_1(vec4<f32>(505f, 475f, -316f, 671f), vec4<bool>(true, global0[_wgslsmith_index_u32(19499u, 31u)], global0[_wgslsmith_index_u32(88973u, 31u)], true), arg_1.x, vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 31u)], global0[_wgslsmith_index_u32(arg_0, 31u)], true), 767u), false, !global0[_wgslsmith_index_u32(0u, 31u)]), Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_1(vec4<f32>(458f, -158f, 1784f, 197f), vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0, 31u)], true), arg_1.x, vec4<bool>(global0[_wgslsmith_index_u32(61036u, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), 1u), true, global0[_wgslsmith_index_u32(u_input.e, 31u)])), Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<f32>(-994f, 1406f, 373f, 1956f), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 31u)]), u_input.d, vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(79309u, 31u)], false, false), 1u), true, true), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, -572f, -1000f, 1000f) + vec4<f32>(-1646f, 1448f, 224f, 1000f)), !vec4<bool>(true, global0[_wgslsmith_index_u32(36766u, 31u)], global0[_wgslsmith_index_u32(arg_0, 31u)], false), -2147483647i, select(vec4<bool>(global0[_wgslsmith_index_u32(50355u, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)], global0[_wgslsmith_index_u32(15331u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(2894u, 31u)], false, global0[_wgslsmith_index_u32(19989u, 31u)], true), true), arg_0))), 31u)];
    var var_2 = ~countOneBits(arg_0);
    let var_3 = Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0, abs(64122u) ^ u_input.e), 31u)], global0[_wgslsmith_index_u32(max(~28950u, 10572u), 31u)], false), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2175f * 802f), _wgslsmith_f_op_f32(select(261f, 1856f, false)), _wgslsmith_f_op_f32(abs(939f)), -662f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 421f, -448f, 1415f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, -471f, 1025f, 207f)))), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], false, true, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 31u)], false), true)), _wgslsmith_mod_i32(abs(i32(-1i) * -1i), -1i), vec4<bool>(true, true, true, true), arg_0), all(vec3<bool>(all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 31u)], false)), !global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)], !global0[_wgslsmith_index_u32(~arg_0, 31u)])), false);
    return var_3;
}

fn func_1() -> Struct_3 {
    return Struct_3(func_2(~(~(~4294967295u)), -min(select(vec3<i32>(-81600i, -2147483647i, 2147483647i), vec3<i32>(u_input.c, 0i, u_input.d), false), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.b.x), vec3<i32>(u_input.d, u_input.d, 2147483647i)))), func_2(u_input.e, _wgslsmith_mult_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 37604i, u_input.b.x), vec3<i32>(0i, 37770i, 24127i), vec3<i32>(u_input.b.x, u_input.d, -2147483647i)), vec3<i32>(u_input.c, 0i, 2147483647i) & vec3<i32>(-14493i, 0i, u_input.c)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.b.x, 0i, 25780i)), ~vec3<i32>(4335i, u_input.b.x, u_input.d)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b.a.x + -781f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.b.a.zx)), _wgslsmith_f_op_vec2_f32(-var_0.b.a.yx), false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.b.a.wy, var_0.b.a.xz, vec2<bool>(var_0.b.d.x, global0[_wgslsmith_index_u32(1u, 31u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(402f, var_0.b.a.x))) * vec2<f32>(var_0.a.b.a.x, 586f))))), 8278u, var_0.b.a.zy);
}

