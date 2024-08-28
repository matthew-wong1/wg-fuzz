struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true));

var<private> global1: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(18619i, 31563i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), -13921i, 44741i, 2147483647i), vec4<i32>(1i, -48185i, 20061i, i32(-2147483648)), vec4<i32>(-5802i, 1i, 2147483647i, -25674i), vec4<i32>(-17203i, 16121i, 2147483647i, -58166i), vec4<i32>(2147483647i, 6001i, -18383i, -1162i), vec4<i32>(276i, 1i, 10121i, -1i), vec4<i32>(3141i, 32762i, 25312i, 2147483647i), vec4<i32>(-1i, 19031i, 18133i, -4459i), vec4<i32>(29666i, -25751i, i32(-2147483648), -54546i), vec4<i32>(11343i, 1i, 14454i, 29392i), vec4<i32>(-44229i, 9449i, 2147483647i, -19707i), vec4<i32>(1i, i32(-2147483648), 7388i, 11483i), vec4<i32>(31911i, 80168i, i32(-2147483648), 39767i), vec4<i32>(4753i, -18428i, 2147483647i, 22884i), vec4<i32>(-1i, 21957i, -1i, -1i), vec4<i32>(0i, 1i, -3378i, -32532i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = arg_0.a.a.x;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1992f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(100f, 2040f, arg_0.b.x)) * arg_0.a.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(278f, arg_0.a.a.x, false))))))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(833f, _wgslsmith_f_op_f32(f32(-1f) * -255f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f * 1631f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, 536f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec2<f32>(-996f, -385f)), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1280f, -1044f)))))));
    global1 = array<vec4<i32>, 17>();
    global1 = array<vec4<i32>, 17>();
    return firstTrailingBit(~firstLeadingBit(~(~vec4<u32>(1900u, 0u, u_input.b, u_input.c.x))));
}

fn func_1() -> i32 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, 14000u, u_input.b), vec4<u32>(21470u, u_input.b, u_input.c.x, u_input.b)), ~(~vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x))) | (vec4<u32>(1u, u_input.b, 1u, ~(~u_input.b)) ^ select(func_2(vec3<i32>(1i, 1i, 1i) & vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), abs(~vec4<u32>(1u, 23635u, u_input.b, u_input.c.x)), vec4<bool>(false, 4294967295u <= u_input.b, true, true)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~17157u) << (~countOneBits(u_input.c.x) % 32u), ~abs(17645u)), 0u);
    let var_2 = u_input.a.x;
    var_1 = var_0.x;
    var var_3 = all(select(select(vec2<bool>(any(global0[_wgslsmith_index_u32(var_0.x, 9u)]), -29279i != var_2), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), select(vec2<bool>(true, select(false, true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, false, true))))));
    return -(~u_input.a.x) << (var_0.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f * 362f)), -115f)));
    global0 = array<vec4<bool>, 9>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), var_1.a.x, any(vec2<bool>(false, true)))), -538f)));
    var var_3 = u_input.a.x != ~func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.c.zx >> ((_wgslsmith_clamp_vec2_u32(u_input.c.xy, u_input.c.zx, u_input.c.xy) << (~(~u_input.c.xz) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.b)), ~vec2<u32>(0u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(15897u, ~49850u), select(u_input.c.yy, u_input.c.yz, vec2<bool>(true, true)))));
}

