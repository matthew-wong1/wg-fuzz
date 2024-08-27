struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(1u, 1u, 51561u, 23192u, 3365u, 39992u, 1u, 24763u, 0u, 0u, 0u, 0u, 6334u, 33762u, 1u, 0u, 1u, 42980u, 42562u, 4294967295u, 54238u, 0u, 1u, 0u, 25620u);

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: array<bool, 18> = array<bool, 18>(false, false, true, true, true, true, true, true, true, false, true, true, true, true, false, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = max(vec2<u32>(4294967295u, 31306u), ~vec2<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27867u, 25u)], 25u)]), 25u)], u_input.b.x));
    var var_1 = u_input.e;
    global0 = array<u32, 25>();
    let var_2 = global2[_wgslsmith_index_u32(min(~((max(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)]) ^ reverseBits(global0[_wgslsmith_index_u32(var_0.x, 25u)])) << (_wgslsmith_sub_u32(var_0.x, 35975u) % 32u)), abs(~(~var_0.x) << (var_0.x % 32u))), 18u)];
    let var_3 = 4265i;
    return 1639f;
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(firstTrailingBit(50328u), 18u)], max(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(11379u, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), 25u)], global0[_wgslsmith_index_u32(min(44506u, _wgslsmith_div_u32(58220u << (global0[_wgslsmith_index_u32(117222u, 25u)] % 32u), u_input.b.x)), 25u)]));
    let var_1 = 1u;
    global0 = array<u32, 25>();
    var var_2 = Struct_3(Struct_2(var_0), Struct_1(var_0.a, ~abs(~0u)), Struct_2(var_0), _wgslsmith_add_vec3_u32(~u_input.b, ~u_input.b), var_0);
    global0 = array<u32, 25>();
    return u_input.a;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global1 = array<vec3<f32>, 26>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(862f, _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) * -356f)))) - -176f);
    var var_1 = u_input.d.x;
    var var_2 = func_3();
    var var_3 = vec3<bool>(false, false, 1f == _wgslsmith_f_op_f32(trunc(1f)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-724f, -876f, var_3.x)), _wgslsmith_f_op_f32(-156f - 143f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32((vec2<i32>(-1i) * -u_input.a.zx) << (~(reverseBits(u_input.b.yx) >> ((u_input.b.yx >> (vec2<u32>(u_input.b.x, 3504u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<i32>(firstTrailingBit(-40828i), 0i)));
    let var_1 = true;
    global2 = array<bool, 18>();
    var var_2 = ~(-u_input.a);
    let x = u_input.a;
    s_output = func_1(abs(49933u));
}

