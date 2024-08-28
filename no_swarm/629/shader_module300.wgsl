struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec2<u32> = vec2<u32>(24463u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = array<f32, 1>();
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_0 = arg_3;
    var var_1 = ~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(firstLeadingBit(var_0.a.x), arg_3.a.x));
    return 2203f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = 24197u;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(79863u, ~_wgslsmith_mod_u32(abs(global2.x), 32763u)), 9u)];
    let var_2 = min(arg_0.a.x, ~global2.x);
    let var_3 = any(!vec2<bool>(u_input.b.x < 45205i, true)) && any(vec2<bool>(true, true));
    let var_4 = true;
    return 0u & (global2.x << (~2630u % 32u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> u32 {
    global2 = arg_1.a.xx;
    global1 = array<Struct_1, 9>();
    let var_0 = 13193u;
    return ~(func_4(Struct_1(~vec3<u32>(global2.x, 4294967295u, u_input.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, arg_3), 17720u, global0[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(arg_1.a.x, 9u)])), 568f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))), arg_1) | _wgslsmith_mod_u32(~0u, reverseBits(func_4(global1[_wgslsmith_index_u32(global2.x, 9u)], -1295f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(0u, 9u)]))));
}

fn func_1() -> vec4<u32> {
    global1 = array<Struct_1, 9>();
    global2 = _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(func_2(true, Struct_1(u_input.a), _wgslsmith_f_op_f32(trunc(832f)), -128f > global0[_wgslsmith_index_u32(1u, 1u)]), firstLeadingBit(max(u_input.a.x, 0u)))), vec2<u32>(global2.x, ~4294967295u));
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 9u)];
    global2 = _wgslsmith_mult_vec2_u32(~(~var_0.a.zy), _wgslsmith_sub_vec2_u32(u_input.a.yy << (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz, var_0.a.zz), firstLeadingBit(var_0.a.zy)) % vec2<u32>(32u)), min(~vec2<u32>(global2.x, 0u), vec2<u32>(global2.x, 27810u) | select(u_input.d, vec2<u32>(5863u, var_0.a.x), vec2<bool>(false, false)))));
    global0 = array<f32, 1>();
    return ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), abs(0u), 1u, ~global2.x), max(~vec4<u32>(81986u, 1u, 1u, 15919u), vec4<u32>(23116u, 52505u, global2.x, 17419u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min((~vec4<u32>(1u, 1u, u_input.a.x, 0u) ^ vec4<u32>(_wgslsmith_sub_u32(27193u, u_input.d.x), _wgslsmith_add_u32(55940u, global2.x), global2.x ^ 1u, u_input.d.x >> (u_input.d.x % 32u))) << (min(func_1(), abs(max(vec4<u32>(global2.x, 0u, u_input.d.x, 22043u), vec4<u32>(0u, 12392u, u_input.a.x, u_input.d.x)))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(abs(u_input.d.x | 69044u), 27910u), ~(u_input.a.x >> (func_1().x % 32u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(1u), func_2(false, Struct_1(u_input.a), 402f, false), ~u_input.a.x), 46749u), max(u_input.d.x >> (~21577u % 32u), u_input.d.x)));
    global2 = u_input.d;
    let var_1 = vec2<bool>(!(!(!any(vec2<bool>(true, false)))), !(global0[_wgslsmith_index_u32(max(var_0.x, ~u_input.a.x), 1u)] == 1743f));
    let var_2 = Struct_1(vec3<u32>(4294967295u, ~_wgslsmith_sub_u32(var_0.x, var_0.x ^ global2.x), _wgslsmith_dot_vec4_u32(~(~var_0), var_0)));
    var var_3 = vec4<bool>(var_1.x, ~var_2.a.x >= 4294967295u, true, all(select(!select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x), vec4<bool>(true, false, true, var_1.x && var_1.x), var_1.x)));
    let var_4 = select(!select(select(vec3<bool>(var_3.x, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(!var_1.x, var_1.x && var_1.x, var_1.x), true), select(select(!vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, true), true), var_3.xyy, false), var_3.x);
    let var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(u_input.b.x) & firstLeadingBit(abs(var_5)), abs(-2147483647i)), u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2859f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.a.x, 1u)], 916f, global0[_wgslsmith_index_u32(1u, 1u)], 1890f))))));
}

