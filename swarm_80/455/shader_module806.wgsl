struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

var<private> global1: i32;

var<private> global2: vec2<f32> = vec2<f32>(258f, 1000f);

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    let var_0 = countOneBits(_wgslsmith_mult_u32(arg_0.c, firstLeadingBit(~1u)));
    let var_1 = Struct_2(arg_2);
    global3 = array<Struct_2, 31>();
    global1 = -18039i;
    let var_2 = vec2<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0, arg_0.c), var_0)) & max(max(1u, ~4294967295u), 1146u), var_0);
    return countOneBits(firstTrailingBit(1u));
}

fn func_2() -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, ~(-max(u_input.b.x, 1i))), firstLeadingBit(-u_input.b.x));
    let var_1 = var_0;
    global3 = array<Struct_2, 31>();
    global0 = array<vec4<bool>, 7>();
    global3 = array<Struct_2, 31>();
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(163216u, _wgslsmith_dot_vec3_u32(vec3<u32>(34546u, 0u, 13520u), vec3<u32>(0u, 0u, 27382u)), ~3734u), vec3<u32>(~firstLeadingBit(9827u), abs(~4440u), func_3(Struct_1(1u, vec4<f32>(global2.x, global2.x, 136f, global2.x), 1u, var_1.x), countOneBits(var_0), all(vec3<bool>(false, false, false)))));
}

fn func_1() -> Struct_1 {
    var var_0 = 2003f;
    var var_1 = Struct_1(~(func_2() & ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 29769u), vec2<u32>(20063u, 0u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-850f, -228f, global2.x, global2.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-785f * -1023f))), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~66129u, 24742u), 7u)])), min(1u, ~(~abs(19274u))), i32(-1i) * -1i);
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    var var_2 = 951f;
    return Struct_1(var_1.c, var_1.b, ~6451u, _wgslsmith_clamp_i32(-27200i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 51073i, u_input.a.x), vec3<i32>(1i, -1i, var_1.d)), 8354i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = -var_0.d;
    var var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b.x, global2.x))), -1127f)) - _wgslsmith_f_op_f32(-global2.x)));
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_0.d, var_0.d, -100839i)) << (~(vec3<u32>(var_2.c, var_0.a, 695u) << (vec3<u32>(1u, 33390u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a ^ u_input.a));
}

