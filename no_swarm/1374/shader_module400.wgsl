struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(57850u, 101599u, 0u), vec3<u32>(123706u, 46142u, 22041u), vec3<u32>(3207u, 1u, 49627u), vec3<u32>(43194u, 0u, 39620u), vec3<u32>(74525u, 52412u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(66548u, 31440u, 4541u), vec3<u32>(41214u, 1u, 56937u), vec3<u32>(4294967295u, 0u, 3372u), vec3<u32>(2862u, 77317u, 0u), vec3<u32>(42414u, 4294967295u, 4294967295u));

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-5333i, i32(-2147483648), 8139i), vec3<i32>(-1i, 66259i, -1i), vec3<i32>(-1i, 1i, 34989i), vec3<i32>(1i, -53963i, -19936i), vec3<i32>(2147483647i, 31998i, 4275i), vec3<i32>(-1i, 59390i, 33623i), vec3<i32>(0i, 68263i, 2147483647i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-413i, 1i, 9853i), vec3<i32>(-9842i, 0i, -8866i), vec3<i32>(11309i, 5740i, i32(-2147483648)), vec3<i32>(27355i, 37140i, -1i), vec3<i32>(65744i, 16833i, i32(-2147483648)), vec3<i32>(3435i, 32035i, 2147483647i), vec3<i32>(-41930i, i32(-2147483648), -20791i), vec3<i32>(-3379i, 0i, 28814i), vec3<i32>(-37976i, 1i, -1i), vec3<i32>(33884i, i32(-2147483648), 1i), vec3<i32>(-34911i, 35574i, 44369i), vec3<i32>(17877i, -1i, 23608i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(25489i, 2147483647i, -30818i), vec3<i32>(3082i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, 30073i, i32(-2147483648)), vec3<i32>(-7804i, 6210i, 58949i));

var<private> global2: array<Struct_1, 25>;

var<private> global3: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global2 = array<Struct_1, 25>();
    global0 = array<vec3<u32>, 12>();
    let var_0 = 2147483647i;
    var var_1 = 1u;
    let var_2 = arg_0.a.x;
    return StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 13535i), vec3<i32>(47061i, -28225i, var_0)), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), -1i), _wgslsmith_clamp_i32(u_input.b, u_input.d, var_0) >> (4294967295u % 32u)), arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b))), vec2<i32>(arg_0.d.x, -46989i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(-1670f));
    let var_1 = ~reverseBits(vec3<u32>(~1u & _wgslsmith_sub_u32(1u, u_input.e.x), _wgslsmith_clamp_u32(u_input.e.x, 36770u, ~1u), reverseBits(1u)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(f32(-1f) * -788f));
    var var_3 = false;
    let var_4 = true;
    global3 = select(var_4, all(vec3<bool>(true, false, true)), true);
    let var_5 = Struct_4(vec3<u32>(60014u, max(_wgslsmith_sub_u32(u_input.e.x, 5057u), var_1.x), 24469u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(var_1.x, 0u, var_4), u_input.a.x), 28u)] ^ -(~global1[_wgslsmith_index_u32(var_1.x, 28u)] ^ global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), var_4, vec2<bool>(true, var_4));
    let x = u_input.a;
    s_output = func_1(global2[_wgslsmith_index_u32(abs(~0u), 25u)]);
}

