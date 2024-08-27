struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-390f, vec3<f32>(-1000f, -1000f, 153f), vec4<i32>(52599i, -1i, 25696i, 14095i)), Struct_1(369f, vec3<f32>(261f, 1000f, 816f), vec4<i32>(0i, 1i, -36303i, -1i)), Struct_1(806f, vec3<f32>(856f, -1201f, 427f), vec4<i32>(1i, 0i, 33614i, 18752i)), Struct_1(138f, vec3<f32>(-509f, 1166f, 602f), vec4<i32>(-28801i, i32(-2147483648), 2147483647i, 5151i)), Struct_1(-603f, vec3<f32>(762f, 599f, -715f), vec4<i32>(1i, -1i, 8397i, -41843i)), Struct_1(2711f, vec3<f32>(-188f, 842f, -159f), vec4<i32>(38925i, 41194i, -32803i, 2636i)), Struct_1(-1000f, vec3<f32>(-185f, -159f, -120f), vec4<i32>(-18374i, -1i, i32(-2147483648), -59009i)), Struct_1(1717f, vec3<f32>(-1402f, -866f, 738f), vec4<i32>(-7582i, -7092i, 2147483647i, 0i)), Struct_1(-379f, vec3<f32>(-356f, -1000f, -1234f), vec4<i32>(-51282i, 2147483647i, -1i, -97i)), Struct_1(1137f, vec3<f32>(200f, 1332f, 1505f), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 43673i)), Struct_1(-1000f, vec3<f32>(-979f, -316f, 1000f), vec4<i32>(-24189i, -4345i, 0i, 7580i)), Struct_1(-536f, vec3<f32>(1586f, 1280f, -1908f), vec4<i32>(-1i, 38413i, 2147483647i, 0i)), Struct_1(-1973f, vec3<f32>(1522f, -1000f, 1324f), vec4<i32>(8017i, -18734i, 0i, 1i)), Struct_1(-1000f, vec3<f32>(1719f, -363f, 475f), vec4<i32>(0i, 43471i, -4598i, 2147483647i)), Struct_1(-151f, vec3<f32>(1000f, 1450f, -187f), vec4<i32>(3485i, 19808i, 1i, 0i)), Struct_1(-556f, vec3<f32>(720f, 347f, -117f), vec4<i32>(-22679i, i32(-2147483648), 0i, -806i)), Struct_1(623f, vec3<f32>(794f, -879f, 804f), vec4<i32>(-13369i, 2182i, -1i, -30793i)), Struct_1(-155f, vec3<f32>(-544f, -700f, 119f), vec4<i32>(-10133i, 1i, -1i, 1i)));

var<private> global2: array<i32, 21> = array<i32, 21>(46456i, -41965i, 1i, -1032i, -325i, 18109i, 23422i, 14592i, 23081i, -2309i, -43513i, -1i, -1i, 2147483647i, -4739i, -33820i, -6068i, -1870i, -6824i, -28693i, 1i);

var<private> global3: array<vec4<f32>, 30>;

var<private> global4: Struct_1 = Struct_1(745f, vec3<f32>(993f, 1942f, 616f), vec4<i32>(-20340i, -25373i, 25589i, 2147483647i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1369f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)))))), global4.b, firstTrailingBit(global4.c >> (reverseBits(u_input.b) % vec4<u32>(32u))));
    let var_1 = u_input.c;
    var var_2 = all(vec2<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))) == _wgslsmith_f_op_f32(global4.a + -764f)));
    var var_3 = global1[_wgslsmith_index_u32(var_1, 18u)];
    global2 = array<i32, 21>();
    return ~select(global4.c, abs(vec4<i32>(0i, 0i, 2147483647i, global4.c.x) << (u_input.b % vec4<u32>(32u))) & select(firstLeadingBit(var_3.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-46371i, global4.c.x, global2[_wgslsmith_index_u32(42875u, 21u)], -2147483647i), vec4<i32>(-10671i, var_0.c.x, var_0.c.x, var_0.c.x)), var_3.c.x != u_input.d), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, global4.c.www, vec3<i32>(u_input.d, 1i, global2[_wgslsmith_index_u32(21770u, 21u)])), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global4.c.x, u_input.a.x))), global2[_wgslsmith_index_u32(59170u, 21u)]), ~vec2<i32>(0i, 13124i));
    var var_1 = u_input.c;
    global1 = array<Struct_1, 18>();
    global4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global4.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1083f, _wgslsmith_f_op_f32(step(1357f, 1000f)), _wgslsmith_div_f32(global4.b.x, global4.a)) * global4.b)), func_3());
    let var_2 = ~(72811i | -reverseBits(var_0.x));
    return 4294967295u;
}

fn func_1() -> vec3<u32> {
    var var_0 = true;
    let var_1 = vec3<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, ~1934u, _wgslsmith_mod_u32(u_input.b.x, u_input.c)), ~_wgslsmith_mult_vec3_u32(u_input.b.yxz, vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)))), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, 1u), func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))), ~(~((u_input.c & 67981u) << (1u % 32u))));
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 18u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, global4.a, global4.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b - var_2.b))), select(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), u_input.c >= 11749u))), max(vec4<i32>(-(global4.c.x << (0u % 32u)), 1i, 55642i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c ^ 16699u, ~var_1.x, var_1.x & 50714u), 21u)]), firstTrailingBit(-reverseBits(vec4<i32>(global4.c.x, var_2.c.x, 2147483647i, -1i)))));
    var var_4 = global4.b.x;
    return vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, (u_input.b << (u_input.b % vec4<u32>(32u))) & firstLeadingBit(u_input.b)), ~min(~(~61740u), u_input.c), ~firstLeadingBit(var_1.x));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = any(vec2<bool>(select(true, all(vec4<bool>(false, true, false, true)), false), _wgslsmith_dot_vec3_i32(arg_2.c.zxy, _wgslsmith_add_vec3_i32(arg_2.c.ywz, vec3<i32>(u_input.d, 2147483647i, 0i))) != (_wgslsmith_clamp_i32(-10599i, 0i, arg_3) << (_wgslsmith_div_u32(u_input.b.x, 75589u) % 32u))));
    global4 = arg_2;
    var var_1 = arg_2.c.x;
    global1 = array<Struct_1, 18>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(arg_2.b.x)), vec3<f32>(-1000f, arg_2.b.x, arg_2.b.x), -global4.c);
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~arg_1.x), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 21>();
    var var_0 = u_input.c;
    var var_1 = func_4(4294967295u, _wgslsmith_mod_vec3_u32(func_1(), ~_wgslsmith_clamp_vec3_u32(u_input.b.zzz, u_input.b.xzz, _wgslsmith_div_vec3_u32(vec3<u32>(22179u, u_input.b.x, 38089u), vec3<u32>(u_input.c, 15205u, u_input.b.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.b * _wgslsmith_f_op_vec3_f32(global4.b * vec3<f32>(1934f, global4.a, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(202f - -664f), _wgslsmith_div_f32(328f, -1084f), _wgslsmith_f_op_f32(f32(-1f) * -865f))), vec4<i32>(~(global4.c.x ^ global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], -2147483647i), vec4<i32>(-1i, -32993i, global2[_wgslsmith_index_u32(27783u, 21u)], u_input.a.x)), global4.c), u_input.a.x | u_input.a.x, ~u_input.a.x)), 21556i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, 0u);
}

