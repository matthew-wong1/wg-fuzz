struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 4>;

var<private> global2: array<Struct_1, 14>;

var<private> global3: bool = false;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 14>();
    let var_0 = Struct_1(~_wgslsmith_mod_u32(max(arg_2.a, 61601u) ^ arg_2.d.x, _wgslsmith_dot_vec3_u32(~arg_2.d, vec3<u32>(arg_2.d.x, 62891u, arg_2.a))), _wgslsmith_mult_i32(-1i, -2147483647i), arg_2.c, vec3<u32>(~0u, arg_2.d.x, ~63613u), -arg_2.b);
    var var_1 = arg_0;
    var var_2 = ~var_0.b;
    global1 = array<f32, 4>();
    return abs(var_0.a);
}

fn func_1() -> vec4<u32> {
    global1 = array<f32, 4>();
    global2 = array<Struct_1, 14>();
    var var_0 = ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(~u_input.a, -28982i));
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    return ~vec4<u32>(39270u, reverseBits(~1u), 1u, _wgslsmith_sub_u32(1189u, func_2(any(global0.xx), -391f, Struct_1(4294967295u, 29790i, vec4<f32>(global1[_wgslsmith_index_u32(102241u, 4u)], -1000f, -286f, global1[_wgslsmith_index_u32(61525u, 4u)]), vec3<u32>(0u, 1u, 9385u), 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.x;
    global3 = false;
    var var_0 = global2[_wgslsmith_index_u32(1u, 14u)];
    var_0 = global2[_wgslsmith_index_u32(var_0.d.x ^ (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.d.x, var_0.a, var_0.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, var_0.a), vec3<u32>(var_0.a, 5246u, 0u))) | _wgslsmith_mult_u32(var_0.a >> (var_0.a % 32u), var_0.a)), 14u)];
    global3 = false;
    global0 = !select(!vec4<bool>(global0.x, true, global0.x, !global0.x), vec4<bool>(true, true, true, true), var_0.c.x != _wgslsmith_f_op_f32(step(839f, -247f)));
    var var_1 = _wgslsmith_mult_vec4_u32(abs(func_1()), ~(vec4<u32>(~63250u, var_0.d.x, var_0.a, var_0.a) ^ vec4<u32>(_wgslsmith_sub_u32(var_0.d.x, 59693u), _wgslsmith_mult_u32(7988u, var_0.a), _wgslsmith_div_u32(var_0.a, 3412u), var_0.a)));
    global0 = select(select(!select(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, false)), vec4<bool>(false, global0.x, true, global0.x), true && global0.x), vec4<bool>(global0.x, all(vec4<bool>(true, false, false, global0.x)), true, all(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), !all(vec3<bool>(true, false, true))), !vec4<bool>(true, any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, true), vec4<bool>(true, global0.x, false, global0.x))), any(global0.xz) | true, global0.x), reverseBits(func_1().x) != ~(var_1.x ^ 1u));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec2_i32(~vec2<i32>(63473i, u_input.a), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -20563i), vec2<i32>(u_input.a, -37376i), vec2<i32>(25136i, u_input.a)), vec2<i32>(u_input.a, 197i) ^ vec2<i32>(u_input.a, u_input.a))), 1i, 0i, -714f);
}

