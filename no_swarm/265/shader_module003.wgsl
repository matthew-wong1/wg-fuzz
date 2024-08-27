struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(8813u, 55376u, 3831u)), Struct_1(vec3<u32>(37074u, 14899u, 39174u)), Struct_1(vec3<u32>(75721u, 4294967295u, 45049u)), Struct_1(vec3<u32>(4294967295u, 8836u, 75888u)), Struct_1(vec3<u32>(37989u, 3204u, 1u)), Struct_1(vec3<u32>(47138u, 0u, 20839u)), Struct_1(vec3<u32>(18661u, 62829u, 4294967295u)), Struct_1(vec3<u32>(64000u, 1u, 44546u)), Struct_1(vec3<u32>(16791u, 39461u, 1u)), Struct_1(vec3<u32>(29362u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 6848u, 61271u)), Struct_1(vec3<u32>(35837u, 84424u, 64024u)), Struct_1(vec3<u32>(20265u, 216u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec3<u32>(65059u, 60060u, 24064u)), Struct_1(vec3<u32>(1u, 72601u, 1u)), Struct_1(vec3<u32>(14361u, 4294967295u, 44501u)), Struct_1(vec3<u32>(55259u, 4294967295u, 1u)), Struct_1(vec3<u32>(4629u, 4294967295u, 11292u)), Struct_1(vec3<u32>(4294967295u, 22292u, 1u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(57261u, 0u, 0u)), Struct_1(vec3<u32>(18983u, 51643u, 1u)), Struct_1(vec3<u32>(1u, 1u, 65404u)), Struct_1(vec3<u32>(44299u, 68743u, 0u)), Struct_1(vec3<u32>(8418u, 31873u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 55379u)));

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(arg_1.x, 1u))), u_input.b.x, arg_0.a.x) >> (~arg_0.a.x % 32u);
    global0 = array<Struct_1, 27>();
    let var_1 = vec4<i32>(u_input.d, -2147483647i, u_input.a, 0i);
    let var_2 = arg_0;
    let var_3 = ~(~global1.a.zz);
    return -2954i;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(arg_2, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(743f, -893f), arg_0, true))), _wgslsmith_f_op_vec2_f32(round(arg_2))))))));
    let var_1 = Struct_1(reverseBits(arg_1.a));
    global1 = Struct_1(vec3<u32>(20821u, u_input.b.x, 4294967295u));
    global2 = array<vec2<u32>, 8>();
    var var_2 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(reverseBits(var_1.a), var_1.a), 38040u), ~reverseBits(arg_1.a.x << (31286u % 32u))), 27u)], vec3<u32>(firstTrailingBit(select(u_input.b.x, reverseBits(arg_1.a.x), true)), var_1.a.x, 19394u));
    return 1u;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global2 = array<vec2<u32>, 8>();
    global2 = array<vec2<u32>, 8>();
    let var_0 = global1.a.x;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(min(4294967295u, ~(~func_1(vec2<f32>(273f, -1442f), global0[_wgslsmith_index_u32(50518u, 27u)], vec2<f32>(1656f, 2315f), 516f))), 1u, 1u, countOneBits(_wgslsmith_div_u32(select(0u, global1.a.x, true), func_1(vec2<f32>(2551f, -432f), global0[_wgslsmith_index_u32(10932u, 27u)], vec2<f32>(1000f, 279f), 708f))));
    let var_1 = vec4<u32>(var_0.x, select(reverseBits(u_input.b.x), 39368u, true), 0u, var_0.x);
    let var_2 = 2147483647i;
    global1 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(func_3(false) >> (abs(var_0.x) % 32u), 23872u), 4294967295u, max(u_input.c.x, max(0u, 4294967295u) ^ _wgslsmith_mod_u32(var_1.x, 0u))));
    var var_3 = max(_wgslsmith_add_vec3_u32(global1.a, global1.a), min(~(~vec3<u32>(15696u, 1u, 56464u)), var_0.xww));
    global2 = array<vec2<u32>, 8>();
    global1 = Struct_1(vec3<u32>(~(~var_1.x), u_input.b.x & 1u, ~(~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(48255u, global1.a.x, 26021u, var_1.x)))));
    var var_4 = abs(4294967295u);
    var var_5 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1014f, -274f, 909f, -3142f)))), vec4<f32>(1000f, -1478f, _wgslsmith_f_op_f32(410f + -794f), -447f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-916f, -945f, -315f, -1064f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2710f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047f + 502f) + -908f)), -266f), ~(~(min(vec3<i32>(-2147483647i, var_2, var_2), vec3<i32>(1i, var_2, var_2)) & ~vec3<i32>(23661i, var_2, -42485i))));
}

