struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<f32> = vec4<f32>(-854f, -1214f, 591f, 1000f);

var<private> global2: vec4<i32> = vec4<i32>(-1859i, 25552i, 1i, 0i);

var<private> global3: Struct_5 = Struct_5(vec3<i32>(-42263i, -21341i, i32(-2147483648)), Struct_1(-1i, 0u, 0u, vec4<u32>(5800u, 5813u, 95426u, 45290u)), Struct_3(vec3<f32>(1202f, 1819f, -454f)), 1u, Struct_3(vec3<f32>(-571f, 282f, -917f)));

var<private> global4: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = vec4<u32>(~_wgslsmith_sub_u32(~_wgslsmith_div_u32(global0.x, 1u), global3.b.c), ~global3.b.c, 4294967295u, 0u);
    var var_0 = ~(global3.b.c << (max(~min(global3.d, global3.d), _wgslsmith_add_u32(130285u, arg_2.b) >> (~0u % 32u)) % 32u));
    global1 = vec4<f32>(_wgslsmith_div_f32(-954f, _wgslsmith_f_op_f32(-global3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), global1.x, _wgslsmith_f_op_f32(-arg_0));
    let var_1 = Struct_3(global1.yxx);
    let var_2 = _wgslsmith_f_op_f32(round(-563f)) >= 180f;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -372f, true))), global3.c.a.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.a.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1640f), _wgslsmith_f_op_f32(exp2(global1.x))))), 838f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(395f))))))));
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = abs(~(~17049u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.yyy * global1.yww) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(trunc(global3.e.a.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(global3.a.x, -55378i, global2.x), vec3<i32>(75396i, -1i, global3.b.a) & vec3<i32>(global3.b.a, global3.b.a, 1i)), Struct_1(_wgslsmith_sub_i32(0i, 2147483647i), ~var_1, 4294967295u, abs(global3.b.d))))));
    let var_3 = global3.b.d.xw;
    var var_4 = -518f;
    return global3.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = reverseBits(0u);
    let var_1 = firstLeadingBit(arg_2.b.b);
    let var_2 = arg_0;
    let var_3 = global3.b;
    let var_4 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~35749u, ~1u), arg_2.b.d.ww), arg_2.b.d.wy);
    return -firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, -34639i), func_2()), firstTrailingBit(arg_2.b.a), 0i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_5) -> Struct_4 {
    var var_0 = vec4<u32>(arg_1.d.x, ~(~arg_1.d.x), (~1u ^ ~_wgslsmith_mult_u32(global3.d, arg_1.b)) & global3.d, 1u);
    var var_1 = Struct_4(var_0.x);
    let var_2 = arg_1.d.x;
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_mult_u32(arg_3.d, var_2)), _wgslsmith_mod_u32(reverseBits(arg_0.b.c), 1u), ~(~arg_0.b.d.x), global3.d), ~arg_1.d), ~8175u, var_1.a, 1611u);
    let var_3 = 2147483647i;
    return Struct_4(reverseBits(abs(~abs(var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(657f * _wgslsmith_f_op_f32(f32(-1f) * -870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global3.e.a.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e.a.x * global3.c.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 304f)), _wgslsmith_f_op_f32(-global3.c.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-792f, _wgslsmith_div_f32(-1998f, 2014f), global3.e.a.x, global3.c.a.x), vec4<f32>(global1.x, global1.x, 639f, _wgslsmith_f_op_f32(global3.e.a.x - global3.c.a.x))))));
    let var_0 = -(~(~vec4<i32>(global3.b.a, u_input.a ^ global2.x, -21599i ^ global2.x, global3.b.a >> (global0.x % 32u))));
    let var_1 = func_4(Struct_5(func_1(true, Struct_3(vec3<f32>(-1000f, 1000f, global1.x)), Struct_2(vec2<bool>(true, true), Struct_1(var_0.x, 1u, global0.x, vec4<u32>(62666u, global0.x, 5432u, global0.x))), _wgslsmith_mod_vec2_i32(global3.a.zz, vec2<i32>(-2147483647i, var_0.x))) << (global0.wzy % vec3<u32>(32u)), Struct_1(-2147483647i, ~global0.x ^ _wgslsmith_div_u32(global3.d, 79247u), 31807u, ~_wgslsmith_add_vec4_u32(global3.b.d, global3.b.d)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global3.c.a.x + global1.x), global1.x, global1.x)), min(~_wgslsmith_dot_vec2_u32(vec2<u32>(11798u, global0.x), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_sub_u32(global3.b.d.x << (0u % 32u), _wgslsmith_add_u32(47691u, global0.x))), global3.c), global3.b, max(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0 ^ vec4<i32>(var_0.x, -1i, global2.x, -1i), -var_0, ~vec4<i32>(2147483647i, global2.x, -13572i, var_0.x)), var_0 ^ ~var_0), var_0), Struct_5(-_wgslsmith_add_vec3_i32(vec3<i32>(-15987i, var_0.x, global2.x), min(vec3<i32>(u_input.a, -31136i, -35257i), global2.yyx)), Struct_1(12758i, abs(countOneBits(global0.x)), _wgslsmith_dot_vec3_u32(global0.xyz, vec3<u32>(22764u, global3.b.d.x, global0.x)), global3.b.d), global3.c, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global3.b.d, global3.b.d) ^ ~vec4<u32>(11032u, global3.b.b, global3.b.c, 0u), min(vec4<u32>(global0.x, global3.d, 1u, global0.x), ~vec4<u32>(global3.b.c, 13262u, global0.x, 0u))), global3.e));
    var var_2 = firstLeadingBit(max(~global3.b.d, reverseBits(~global3.b.d)) & vec4<u32>(0u, global3.b.d.x, global3.d, _wgslsmith_dot_vec3_u32(vec3<u32>(12714u, var_1.a, 5176u), global0.xzx) | _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 57963u, 2993u, 0u), global3.b.d)));
    let var_3 = _wgslsmith_add_vec3_u32(~global3.b.d.xyz ^ var_2.zyz, _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(global3.b.d, vec4<u32>(var_2.x, 10677u, 4294967295u, 0u)), 1u << (0u % 32u), var_2.x), min(~_wgslsmith_mult_vec3_u32(vec3<u32>(25313u, 71676u, 4294967295u), var_2.zzy), (vec3<u32>(var_1.a, 21765u, 83326u) | vec3<u32>(1u, global3.d, 0u)) & ~var_2.wxw)));
    global3 = Struct_5(vec3<i32>(u_input.a, 2147483647i >> (~var_2.x % 32u), _wgslsmith_add_i32(~2147483647i, global3.a.x)) >> (vec3<u32>(~21507u, var_1.a, ~(~41074u)) % vec3<u32>(32u)), global3.b, global3.e, _wgslsmith_mult_u32(4294967295u, 1u), global3.c);
    let var_4 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x >> (firstTrailingBit(1u) % 32u), _wgslsmith_div_u32(~_wgslsmith_add_u32(var_3.x, global3.d), var_1.a)), 4u)], Struct_1(~abs(2147483647i), (~var_1.a << (~0u % 32u)) << (firstTrailingBit(max(var_1.a, 0u)) % 32u), var_2.x, ~(~vec4<u32>(var_3.x, global3.d, var_2.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec4<u32>(global3.b.c, max(global3.b.d.x, ~4294967295u) >> (max(_wgslsmith_add_u32(var_4.b.d.x, var_4.b.b), ~global3.d) % 32u), func_4(Struct_5(_wgslsmith_add_vec3_i32(global3.a, vec3<i32>(var_4.b.a, var_4.b.a, -33855i)), Struct_1(-12761i, 4294967295u, 16521u, var_4.b.d), Struct_3(vec3<f32>(global1.x, -1275f, global3.c.a.x)), global3.b.c, Struct_3(global3.c.a)), Struct_1(reverseBits(0i), min(50872u, 4294967295u), 26670u, var_4.b.d), vec4<i32>(-53222i ^ var_4.b.a, global2.x, i32(-1i) * -8548i, -53581i), Struct_5(vec3<i32>(global3.b.a, var_4.b.a, var_0.x), global3.b, global3.e, select(var_2.x, 0u, true), Struct_3(global1.wxx))).a, _wgslsmith_dot_vec2_u32(~(~global0.yz), firstLeadingBit(global0.wy))), ~(_wgslsmith_clamp_vec3_i32(global2.xww, _wgslsmith_mult_vec3_i32(var_0.xwy, vec3<i32>(2147483647i, 1278i, var_4.b.a)), vec3<i32>(u_input.a, var_4.b.a, global3.a.x) << (vec3<u32>(global3.b.d.x, 6568u, 95630u) % vec3<u32>(32u))) >> (vec3<u32>(global3.d, ~60918u, ~var_1.a) % vec3<u32>(32u))), ~vec4<u32>(1u, var_4.b.c, 64191u, ~2654u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.a.x * -217f) - -196f), global3.e.a.x));
}

