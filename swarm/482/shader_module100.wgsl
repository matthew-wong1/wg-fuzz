struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 26> = array<u32, 26>(28632u, 4294967295u, 116660u, 7412u, 12732u, 4294967295u, 0u, 24800u, 4294967295u, 8918u, 18609u, 23212u, 1u, 0u, 1u, 1u, 1u, 21865u, 19918u, 4294967295u, 67269u, 73042u, 4294967295u, 4294967295u, 24959u, 4294967295u);

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<Struct_1, 21>;

var<private> global4: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = global0.d.yxx;
    global4 = ~(~(~global0.d.x));
    global2 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(round(global0.a.x));
    let var_2 = true;
    return reverseBits(_wgslsmith_mod_u32(~0u, ~(~1u)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> vec4<f32> {
    global2 = array<Struct_1, 30>();
    let var_0 = vec2<bool>(false, arg_2 >= 314f);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(arg_0, u_input.b.x), 26u)], ~1u), 21u)];
    let var_2 = vec3<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(-arg_2), -950f);
    global1 = array<u32, 26>();
    return vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f - 1792f) * global0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))))))), -896f);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(269f - -1119f), -176f, -966f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_u32(3676u, global0.d.x | global1[_wgslsmith_index_u32(34185u, 26u)]), global0.d.xwx, _wgslsmith_f_op_f32(round(global0.a.x))))), abs(select(vec3<i32>(~(-2147483647i), u_input.a, 2147483647i), -vec3<i32>(u_input.a, global0.c.x, global0.c.x) ^ vec3<i32>(global0.c.x, u_input.a, -37340i), any(vec3<bool>(false, false, false)))), ~max(~abs(vec4<u32>(0u, global0.d.x, 11350u, global0.d.x)), vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(global0.d.yw, u_input.b), 37373u, u_input.b.x)));
    global1 = array<u32, 26>();
    let var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 21u)];
    let var_2 = global3[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(~(select(10319u, global0.d.x, false) >> (_wgslsmith_div_u32(u_input.b.x, 59869u) % 32u)), u_input.b.x), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72697u), var_0.d.wx) << (abs(19797u) % 32u), ~15799u, 305f == var_0.a.x) | 1u, false), 21u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, var_2.b.x) + var_0.b.x), 2421f, _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-global0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(var_2.a))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.x, var_2.c.x, var_2.c.x), -var_2.c), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(min(var_0.d, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(11362u, 26u)], var_1.d.x, var_2.d.x))), vec4<u32>(var_2.d.x >> (0u % 32u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global0.d.x), 26u)], global0.d.x, _wgslsmith_sub_u32(var_1.d.x, 46964u))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(func_1(), ~_wgslsmith_mod_u32(u_input.b.x | global0.d.x, ~u_input.b.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(firstTrailingBit(u_input.b.x)), ~func_2()), 26u)], countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(12080u, abs(0u)), 26u)]));
    let var_1 = global0.c;
    let var_2 = 933f;
    global2 = array<Struct_1, 30>();
    var var_3 = ~global0.d >> (firstLeadingBit(var_0) % vec4<u32>(32u));
    let var_4 = global3[_wgslsmith_index_u32(min(1u, ~u_input.b.x), 21u)];
    var var_5 = -211f;
    global4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, min(~vec3<u32>(~41140u, ~u_input.b.x, _wgslsmith_div_u32(0u, 1u)), min(~var_3.zyz, vec3<u32>(~var_3.x, 0u, 4294967295u))), global0.d.x);
}

