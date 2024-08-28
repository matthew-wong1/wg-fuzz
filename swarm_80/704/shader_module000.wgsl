struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<i32, 13> = array<i32, 13>(5791i, -1i, -1i, -627i, i32(-2147483648), 15703i, 17809i, 1i, -54813i, 0i, -31284i, -4358i, i32(-2147483648));

var<private> global1: Struct_3 = Struct_3(vec2<bool>(false, false), vec3<i32>(1095i, 0i, i32(-2147483648)), Struct_1(vec4<i32>(0i, 21969i, 12801i, 17954i)), vec2<bool>(true, true), vec2<f32>(349f, -492f));

var<private> global2: array<Struct_3, 14>;

var<private> global3: vec4<u32> = vec4<u32>(0u, 24662u, 7588u, 27447u);

var<private> global4: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = !all(select(vec3<bool>(any(vec2<bool>(global1.d.x, global1.a.x)), true, all(vec3<bool>(false, global1.a.x, global1.a.x))), !select(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.d.x, global1.d.x, false), vec3<bool>(global1.d.x, false, global1.d.x)), global1.d.x));
    var var_1 = countOneBits(global3.x);
    var var_2 = global1.c;
    var_1 = global3.x;
    let var_3 = var_2.a.zz;
    return min(~(26331u | global3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.x, ~u_input.a, ~80890u) | vec4<u32>(4294967295u, global3.x, abs(1u), abs(0u)), vec4<u32>(~4294967295u, global3.x, ~15393u ^ u_input.a, 4294967295u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(-global1.e.x), -1004f) + vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.e.x)), _wgslsmith_f_op_f32(min(916f, 910f)), _wgslsmith_f_op_f32(round(-774f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.e.x, 1185f)), vec3<f32>(global1.e.x, global1.e.x, global1.e.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.e.x, -526f))))), global2[_wgslsmith_index_u32(arg_0.x, 14u)], global1.e.x, ~arg_2.a.yzx);
    let var_1 = abs(_wgslsmith_mult_vec3_i32(~var_0.d, global1.b)) & var_0.b.b;
    let var_2 = var_0.b.c;
    global0 = array<i32, 13>();
    var var_3 = max(~(~vec3<u32>(func_3(global1.c), arg_0.x, ~4294967295u)), ~max(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_0.x, global3.x, u_input.a)), ~global3.yzy), ~(vec3<u32>(arg_0.x, 30487u, 65302u) ^ global3.xxz)));
    return abs(_wgslsmith_clamp_vec4_u32((vec4<u32>(var_3.x, 1u, 1u, 0u) >> (vec4<u32>(arg_0.x, 1767u, 12753u, global3.x) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, arg_0.x, u_input.a, var_3.x) % vec4<u32>(32u)), vec4<u32>(u_input.a & var_3.x, var_3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global3.x, arg_0.x)), ~arg_0.x), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, 1u, 92391u, 12682u), vec4<u32>(13124u, 4294967295u, 5527u, u_input.a), global1.a.x), min(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(50908u, 51056u, 4294967295u, 1u)))) & (_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_3.x, 1u, 19078u, 16733u), vec4<u32>(10421u, var_3.x, var_3.x, u_input.a)), abs(vec4<u32>(14313u, arg_0.x, var_3.x, u_input.a))) << (~(vec4<u32>(u_input.a, 1u, global3.x, arg_0.x) & vec4<u32>(1u, global3.x, 1u, arg_0.x)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = 47648u;
    let var_1 = ~(~(~59383u));
    global3 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1, var_1, arg_0.x) | vec4<u32>(var_1, arg_0.x, arg_0.x, 19912u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_1, 38065u, 56252u), _wgslsmith_sub_vec4_u32(vec4<u32>(27742u, 19777u, arg_0.x, 20163u), vec4<u32>(global3.x, u_input.a, 1u, global3.x))))), ~(~func_2(vec2<u32>(global3.x, 13240u), _wgslsmith_add_i32(arg_1.x, 57562i), global1.c)));
    let var_2 = Struct_3(!(!global1.a), vec3<i32>(-arg_1.x, 1i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-31130i, 2147483647i), vec2<i32>(arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 13u)])), -1i)), Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, arg_1.x, global1.c.a.x), global1.c.a), vec4<i32>(abs(36669i), 1i, 37566i, abs(-20434i)))), !global1.a, global1.e);
    var var_3 = _wgslsmith_add_u32(max(5015u, ~u_input.a), ~4294967295u);
    return 0u ^ func_2(~reverseBits(~arg_0), 2147483647i, Struct_1(var_2.c.a)).x;
}

fn func_4(arg_0: i32, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_3(!(!vec2<bool>(false, global1.d.x)), vec3<i32>(7306i, -1i ^ global1.b.x, 0i), Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-11249i, arg_0, -2147483647i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], -1i, -3294i, global1.b.x)), vec4<i32>(~0i, -1i | global1.c.a.x, arg_0, arg_0 << (u_input.a % 32u)))), !global1.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.e.x, -1000f), vec2<f32>(-237f, global1.e.x), global1.a.x))))), _wgslsmith_f_op_vec2_f32(global1.e - global1.e))));
    let var_1 = !select(!(!var_0.d.x), any(vec3<bool>(!var_0.a.x, true, global1.d.x)), global1.d.x);
    let var_2 = global2[_wgslsmith_index_u32(1u, 14u)];
    global0 = array<i32, 13>();
    return StorageBuffer(_wgslsmith_f_op_f32(-1853f + -438f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(global3.x, 14u)];
    global2 = array<Struct_3, 14>();
    global0 = array<i32, 13>();
    global1 = global2[_wgslsmith_index_u32(u_input.a, 14u)];
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(global3.xyx), select(~global3.yzw, max(vec3<u32>(u_input.a, 25402u, 44664u), global3.xwy), select(select(vec3<bool>(true, global1.d.x, global1.d.x), vec3<bool>(false, global1.d.x, global1.d.x), global1.d.x), select(vec3<bool>(global1.a.x, false, global1.d.x), vec3<bool>(global1.a.x, global1.d.x, global1.d.x), global1.a.x), true))), min(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, global3.x, 56677u, global3.x)), max(vec4<u32>(4838u, 16444u, 10228u, 4294967295u), vec4<u32>(21948u, 4294967295u, 0u, u_input.a))), global3.x)));
    let var_1 = !(!(!(!select(vec3<bool>(global1.d.x, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, true), false))));
    var var_2 = 58327u;
    var var_3 = !var_1;
    let x = u_input.a;
    s_output = func_4(reverseBits(-_wgslsmith_mod_i32(-1i, 1i)), func_1(vec2<u32>(~global3.x, 8263u), -(global1.c.a.zxx ^ -vec3<i32>(global1.b.x, -47585i, -22779i))));
}

