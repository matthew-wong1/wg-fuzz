struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1028f, -1000f, 1000f), vec3<f32>(1431f, -478f, -399f), vec3<f32>(-1866f, 889f, -314f), vec3<f32>(199f, -977f, 935f), vec3<f32>(1203f, 224f, -1135f), vec3<f32>(1230f, -785f, 172f), vec3<f32>(-1000f, 1000f, 933f), vec3<f32>(-878f, -375f, -235f), vec3<f32>(-752f, 916f, 1268f), vec3<f32>(494f, 660f, -683f), vec3<f32>(-878f, 1799f, 177f), vec3<f32>(356f, -187f, 1094f), vec3<f32>(786f, -1580f, 1793f), vec3<f32>(1173f, 929f, 896f), vec3<f32>(642f, 1898f, -291f), vec3<f32>(1000f, 1550f, 1838f), vec3<f32>(-209f, -984f, -1420f));

var<private> global3: u32 = 4294967295u;

var<private> global4: vec2<f32> = vec2<f32>(877f, 510f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    global3 = ~u_input.c;
    return global4.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = select(vec4<bool>(all(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 1u)], arg_3.c, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_1, 1u)], true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(61764u, 1u)], arg_3.c)), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(24753u, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, false, global0[_wgslsmith_index_u32(u_input.c, 1u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_1, 1u)])), global0[_wgslsmith_index_u32(arg_1 ^ u_input.b.x, 1u)])), !global0[_wgslsmith_index_u32(arg_1, 1u)], true, any(!vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(0u, 1u)])) || true), vec4<bool>(_wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(floor(global4.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.a.x * 1357f), _wgslsmith_f_op_f32(func_1()))) >= -1027f, true, !select(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(66013u, 1u)])), true)), u_input.a.x <= max(u_input.a.x >> (1u % 32u), -u_input.a.x >> (5701u % 32u)));
    global2 = array<vec3<f32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-709f))), global4.x));
    var var_2 = u_input.b.x;
    global0 = array<bool, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1185f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-388f, global4.x)));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x >> (_wgslsmith_div_u32(12119u, 4294967295u) % 32u)), 11u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(global4.x)), 1u, arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 11u)])), var_0.a.x, _wgslsmith_f_op_f32(ceil(-2394f)));
    global0 = array<bool, 1>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1132f)), _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(min(-348f, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_f32(global4.x * -982f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), -651f)), 1346f), !select(false, all(select(vec2<bool>(true, true), vec2<bool>(var_0.c, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)]))), var_0.c), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) - vec3<f32>(-870f, _wgslsmith_div_f32(var_0.d.x, 1247f), 358f)))));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1870f)));
    return select(vec2<bool>(false, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], false), var_0.c), vec2<bool>(false, var_2.c), select(vec2<bool>(true, var_2.c), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], false)))), select(!vec2<bool>(any(vec2<bool>(var_2.c, var_0.c)), all(vec4<bool>(var_0.c, var_0.c, true, global0[_wgslsmith_index_u32(66340u, 1u)]))), select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 1u)])), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec2<bool>(true, false), any(vec4<bool>(true, var_0.c, var_2.c, true))), false), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(454f, global4.x, _wgslsmith_f_op_f32(func_1()), -1000f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1634f, _wgslsmith_f_op_f32(global4.x * -1635f), global4.x, 1f)))));
    var var_2 = !(!global0[_wgslsmith_index_u32(~reverseBits(~u_input.b.x), 1u)]);
    let var_3 = !select(func_2(~(~vec4<u32>(u_input.c, 0u, 44683u, 110853u))), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 35785u < u_input.c), func_2(~select(vec4<u32>(9176u, 55333u, u_input.c, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, global0[_wgslsmith_index_u32(u_input.c, 1u)], false))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a & firstTrailingBit(select(-u_input.a, vec3<i32>(-62607i, 2147483647i, -1i) & u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, var_3.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 1i) & vec4<i32>(u_input.a.x, u_input.a.x, -16997i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1i, 31077i, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)))), ~reverseBits(vec4<i32>(-12156i, u_input.a.x, -2147483647i, -2359i)) | vec4<i32>(-u_input.a.x, countOneBits(-2147483647i), -u_input.a.x, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, -1i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -43719i)) | vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -37462i), -13778i, 2147483647i, reverseBits(u_input.a.x))), firstTrailingBit(countOneBits(~u_input.c)));
}

