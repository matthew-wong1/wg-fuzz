struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<i32>(-9898i, 12425i, -21474i, 1i), vec2<bool>(false, true), vec3<bool>(true, false, false), 1u), Struct_1(vec4<i32>(0i, 1i, -2336i, 8094i), vec2<bool>(true, false), vec3<bool>(true, true, true), 65513u), Struct_1(vec4<i32>(-77534i, i32(-2147483648), -2474i, 2147483647i), vec2<bool>(false, false), vec3<bool>(false, false, false), 33742u), Struct_1(vec4<i32>(i32(-2147483648), -10994i, i32(-2147483648), -1i), vec2<bool>(true, true), vec3<bool>(false, false, false), 0u), Struct_1(vec4<i32>(-29501i, 44308i, -11717i, i32(-2147483648)), vec2<bool>(false, false), vec3<bool>(true, false, true), 0u), Struct_1(vec4<i32>(1i, 97393i, 1536i, 64132i), vec2<bool>(true, true), vec3<bool>(true, true, true), 0u), Struct_1(vec4<i32>(2147483647i, 1i, -6805i, -56584i), vec2<bool>(true, true), vec3<bool>(true, false, true), 0u), Struct_1(vec4<i32>(23926i, 35607i, 0i, -10753i), vec2<bool>(true, true), vec3<bool>(true, true, true), 12296u), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -36415i), vec2<bool>(false, true), vec3<bool>(true, true, true), 1u), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, -21617i), vec2<bool>(false, false), vec3<bool>(true, true, true), 51516u), Struct_1(vec4<i32>(17439i, -4310i, 70451i, -51416i), vec2<bool>(false, false), vec3<bool>(false, true, false), 26196u), Struct_1(vec4<i32>(-30375i, -39086i, 1i, -26393i), vec2<bool>(false, false), vec3<bool>(false, false, true), 0u), Struct_1(vec4<i32>(-1i, -1i, -22779i, 0i), vec2<bool>(false, true), vec3<bool>(false, false, true), 45626u), Struct_1(vec4<i32>(-53821i, -53738i, -29739i, 3437i), vec2<bool>(false, false), vec3<bool>(true, false, true), 1u), Struct_1(vec4<i32>(1i, 1i, 1i, 2147483647i), vec2<bool>(true, false), vec3<bool>(true, true, true), 19319u), Struct_1(vec4<i32>(0i, -3209i, 0i, 30271i), vec2<bool>(true, false), vec3<bool>(true, true, true), 22420u), Struct_1(vec4<i32>(21986i, 1i, -23428i, 1i), vec2<bool>(true, false), vec3<bool>(false, false, true), 54938u), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -34834i), vec2<bool>(false, false), vec3<bool>(true, false, false), 6629u), Struct_1(vec4<i32>(i32(-2147483648), 0i, 25148i, -10471i), vec2<bool>(true, true), vec3<bool>(true, false, false), 29825u), Struct_1(vec4<i32>(-7827i, 19093i, -11251i, -29277i), vec2<bool>(true, true), vec3<bool>(true, true, false), 4294967295u), Struct_1(vec4<i32>(27264i, 1i, 10936i, 0i), vec2<bool>(true, false), vec3<bool>(false, false, true), 1u), Struct_1(vec4<i32>(40310i, 0i, 0i, 22755i), vec2<bool>(true, false), vec3<bool>(false, false, true), 649u), Struct_1(vec4<i32>(-1i, -17089i, i32(-2147483648), 0i), vec2<bool>(false, true), vec3<bool>(true, true, true), 0u), Struct_1(vec4<i32>(-1i, 2147483647i, 30644i, 2147483647i), vec2<bool>(false, true), vec3<bool>(false, false, true), 1u), Struct_1(vec4<i32>(14913i, 0i, -1i, 2147483647i), vec2<bool>(true, false), vec3<bool>(false, false, true), 48838u), Struct_1(vec4<i32>(2147483647i, 28456i, 9409i, 2147483647i), vec2<bool>(false, true), vec3<bool>(true, true, true), 0u));

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(7969u, 0u, 36609u, 69172u), vec4<u32>(4294967295u, 10246u, 39694u, 29238u), vec4<u32>(91703u, 4294967295u, 27094u, 4294967295u), vec4<u32>(1u, 1u, 0u, 49936u), vec4<u32>(98173u, 80688u, 75741u, 4294967295u), vec4<u32>(40562u, 1u, 3281u, 1u), vec4<u32>(4294967295u, 56371u, 0u, 1u), vec4<u32>(0u, 0u, 61779u, 43116u), vec4<u32>(80056u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 72448u, 4294967295u, 13475u), vec4<u32>(16791u, 1u, 4294967295u, 11695u), vec4<u32>(24190u, 1u, 49718u, 36235u), vec4<u32>(84135u, 0u, 49687u, 0u), vec4<u32>(4294967295u, 1u, 42856u, 4294967295u), vec4<u32>(4294967295u, 15239u, 90027u, 46695u), vec4<u32>(1u, 0u, 56300u, 2449u), vec4<u32>(4294967295u, 4294967295u, 1u, 24831u), vec4<u32>(1u, 75956u, 1u, 74293u), vec4<u32>(1u, 85756u, 15999u, 1u), vec4<u32>(767u, 31382u, 0u, 64221u), vec4<u32>(53964u, 0u, 0u, 33422u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = arg_0.c;
    global0 = arg_0;
    global2 = array<vec4<u32>, 21>();
    global2 = array<vec4<u32>, 21>();
    global0 = Struct_2(Struct_1(select(global0.a.a | -vec4<i32>(-1i, global0.a.a.x, -23177i, global0.a.a.x), -vec4<i32>(-1i, arg_0.a.a.x, global0.a.a.x, -22935i) >> (~vec4<u32>(arg_0.c, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(global0.a.c.x, arg_0.a.c.x || false, false, false)), global0.a.c.zz, select(arg_0.a.c, global0.a.c, !all(global0.a.c.xy)), global0.a.d), vec4<i32>(1i, -41223i, ~_wgslsmith_add_i32(global0.a.a.x << (var_0 % 32u), 53198i), global0.a.a.x), u_input.a.x, global0.d);
    return min(_wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_0.a.a.x, -2147483647i, -1i, 31121i), vec4<i32>(global0.a.a.x, 72595i, 2147483647i, -1i) & global0.a.a) << (u_input.b % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, arg_0.a.a.x, -2147483647i), vec3<i32>(arg_0.a.a.x, -1i, global0.b.x), vec3<bool>(true, global0.a.c.x, true)), global0.b.zwz), -1i, _wgslsmith_add_i32(firstTrailingBit(arg_0.b.x), arg_0.b.x), -5313i)), arg_0.a.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(func_3(Struct_2(global0.a, global0.a.a, u_input.b.x, 531f)) >> (~vec4<u32>(47283u, 4294967295u, 27993u, global0.a.d) % vec4<u32>(32u))), global0.a.b, global0.a.c, ~(~_wgslsmith_sub_u32(global0.c, 1u))), ~global0.b, 92615u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -2329f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(519f + -531f))))));
    global0 = Struct_2(Struct_1(global0.b, global0.a.b, select(select(select(vec3<bool>(true, global0.a.c.x, false), vec3<bool>(true, global0.a.c.x, true), var_0.a.c), !global0.a.c, any(vec4<bool>(true, true, var_0.a.b.x, global0.a.c.x))), select(global0.a.c, global0.a.c, true), global0.a.b.x), ~75688u), _wgslsmith_mult_vec4_i32(vec4<i32>(27916i, var_0.b.x, 4407i, -2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~global0.a.a, ~vec4<i32>(global0.b.x, -1i, 2147483647i, global0.a.a.x)), _wgslsmith_mod_vec4_i32(abs(var_0.a.a), vec4<i32>(global0.b.x, global0.a.a.x, global0.a.a.x, 11874i)), var_0.b)), ~(~44760u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d + 669f)))));
    let var_1 = Struct_2(Struct_1(vec4<i32>(var_0.a.a.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.a.a.x, global0.a.a.x), 2147483647i ^ global0.a.a.x), -62549i ^ _wgslsmith_mod_i32(global0.b.x, var_0.a.a.x), select(reverseBits(var_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, global0.a.a.x, 3732i), global0.a.a.wzx), global0.a.b.x)), select(!select(vec2<bool>(var_0.a.c.x, global0.a.c.x), vec2<bool>(var_0.a.b.x, false), var_0.a.b), global0.a.b, global0.a.b.x), select(select(!global0.a.c, !global0.a.c, global0.a.b.x), select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.c.x, false, var_0.a.b.x), !global0.a.b.x), vec3<bool>(global0.a.c.x, true, true)), var_0.c), global0.a.a, 4294967295u, global0.d);
    global2 = array<vec4<u32>, 21>();
    var var_2 = Struct_1(-var_1.b, vec2<bool>(!(!var_0.a.c.x), false), select(var_1.a.c, vec3<bool>(false, !var_0.a.b.x, var_0.a.c.x | select(false, var_0.a.c.x, var_1.a.b.x)), reverseBits(_wgslsmith_div_u32(u_input.a.x, 29578u)) < _wgslsmith_dot_vec3_u32(u_input.b.wzx, u_input.b.wwz)), u_input.b.x);
    return var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(global0.d + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2488f, 1000f)), _wgslsmith_f_op_f32(floor(global0.d)), true)), _wgslsmith_f_op_f32(global0.d + -712f)), 877f));
    var var_1 = Struct_2(func_2(), global0.b, min(~countOneBits(u_input.a.x), global0.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, -251f))));
    global2 = array<vec4<u32>, 21>();
    let var_2 = _wgslsmith_mult_i32(reverseBits(global0.b.x), -max(func_3(Struct_2(var_1.a, global0.a.a, 5280u, 565f)).x, ~(42383i & var_1.a.a.x)));
    var_1 = Struct_2(Struct_1(var_1.a.a, vec2<bool>(all(!var_1.a.c), any(select(vec4<bool>(var_1.a.b.x, global0.a.b.x, global0.a.b.x, var_1.a.c.x), vec4<bool>(var_1.a.c.x, global0.a.c.x, true, global0.a.c.x), vec4<bool>(var_1.a.c.x, global0.a.b.x, var_1.a.c.x, var_1.a.b.x)))), var_1.a.c, max(_wgslsmith_mult_u32(global0.a.d | u_input.b.x, 1u), 1u)), reverseBits(~(-var_1.a.a)), 42847u, 233f);
    return Struct_2(Struct_1(-var_1.a.a, !select(vec2<bool>(false, global0.a.c.x), vec2<bool>(false, true), select(var_1.a.c.yy, global0.a.b, vec2<bool>(global0.a.c.x, var_1.a.b.x))), !(!var_1.a.c), u_input.b.x), vec4<i32>(var_2, abs(var_2), -(var_1.a.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(93508u, 21u)]) % 32u)), i32(-1i) * -2147483647i), var_1.c, 1338f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~global0.a.a.x);
    global2 = array<vec4<u32>, 21>();
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.b.x, global0.a.a.x << (1225u % 32u)), -26410i, i32(-1i) * -5670i);
    global0 = func_1();
    let var_1 = func_1().a;
    var var_2 = Struct_1(reverseBits(-select(vec4<i32>(-1i, global0.a.a.x, -2147483647i, var_1.a.x) ^ global0.a.a, -vec4<i32>(global0.a.a.x, 0i, -20063i, var_1.a.x), global0.a.b.x)), global0.a.b, vec3<bool>(true, any(vec2<bool>(true, true)), true), 33483u);
    var_0 = 9786i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1434f), global0.d), vec3<i32>(var_1.a.x, 1i, ~2147483647i), global0.d, _wgslsmith_mod_i32(var_1.a.x, ~firstTrailingBit(abs(-1i))), _wgslsmith_div_vec4_i32(abs(var_1.a), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global0.b.wx, vec2<i32>(global0.b.x, 18558i)), -vec2<i32>(-24140i, var_1.a.x)), _wgslsmith_sub_i32(var_2.a.x, var_1.a.x) & countOneBits(1i), -27715i, 1i >> ((var_1.d ^ var_1.d) % 32u))));
}

