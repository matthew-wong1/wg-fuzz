struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-192f, 1601f, -607f, 569f)))))))), 16757i, ~(-55133i), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(33557i, u_input.b, u_input.b, 42556i) << (vec4<u32>(82169u, u_input.d, 1u, u_input.d) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(1i, 2147483647i, u_input.b, u_input.a))) >> ((max(vec4<u32>(1u, u_input.c.x, u_input.d, u_input.c.x) | vec4<u32>(1u, 72484u, 36097u, u_input.d), ~vec4<u32>(u_input.c.x, 4294967295u, 88219u, u_input.c.x)) ^ vec4<u32>(u_input.d, 4294967295u, ~0u, u_input.d)) % vec4<u32>(32u)));
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_1 = u_input.d << (0u % 32u);
    return _wgslsmith_dot_vec3_u32(select(countOneBits(~(~vec3<u32>(u_input.c.x, 1u, var_1))), min(max(abs(vec3<u32>(var_1, 1u, 82753u)), min(vec3<u32>(41668u, 23801u, 4294967295u), vec3<u32>(5930u, var_1, var_1))), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 61277u, u_input.c.x) << (vec3<u32>(u_input.c.x, var_1, 18706u) % vec3<u32>(32u)), ~vec3<u32>(var_1, 1u, var_1))), false), select(max(select(vec3<u32>(4294967295u, var_1, u_input.d) | vec3<u32>(u_input.c.x, u_input.d, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(32798u, 79967u, var_1), vec3<u32>(u_input.d, 0u, u_input.d)), all(vec3<bool>(false, true, false))), vec3<u32>(1u, 4364u, ~1u)), select(vec3<u32>(16489u, ~25289u, ~678u), vec3<u32>(u_input.c.x, u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(37392u, 44671u, u_input.c.x, u_input.d), vec4<u32>(u_input.c.x, u_input.d, 19857u, 0u))), vec3<bool>(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, false, false)))), vec3<bool>(select(true, true, true), true, true)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = ~max(~(~101849u), u_input.c.x) & abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), ~u_input.c), func_3()));
    var var_1 = Struct_2(0u, !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, false, false))), (u_input.d & 1u) >= ~7573u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, -u_input.a, countOneBits(-2147483647i)), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0, u_input.a, arg_0, u_input.a), vec4<i32>(46921i, -68602i, -2147483647i, 0i), min(vec4<i32>(-1i, u_input.b, 0i, -39732i), vec4<i32>(-1i, 40137i, 18903i, arg_0)))), global0[_wgslsmith_index_u32(1u & min(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.d), u_input.c), _wgslsmith_clamp_u32(max(58462u, 14907u), func_3(), u_input.d)), 15u)], Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -532f, 629f, 430f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1120f, -455f, -1661f, -603f))), vec4<f32>(_wgslsmith_div_f32(1000f, -739f), _wgslsmith_f_op_f32(-1000f * -584f), 1f, _wgslsmith_f_op_f32(-324f - -2062f)), true)), _wgslsmith_mod_i32(arg_0, _wgslsmith_mult_i32(~u_input.b, select(u_input.a, u_input.a, false))), 1i, ~countOneBits(vec4<i32>(14937i, u_input.b, -1i, arg_0))));
    let var_2 = Struct_2(~_wgslsmith_div_u32(reverseBits(var_1.a), ~firstTrailingBit(u_input.d)), !vec2<bool>(abs(1u) < abs(var_1.a), any(vec4<bool>(false, var_1.b.x, false, false))), -2147483647i, Struct_1(var_1.d.a, -1i, countOneBits(~(-u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.d.d.www, vec3<i32>(var_1.d.b, arg_0, var_1.c)), arg_0, -var_1.d.b, -1i << (u_input.c.x % 32u)), _wgslsmith_add_vec4_i32(-vec4<i32>(30974i, 32723i, arg_0, u_input.a), var_1.e.d))), Struct_1(var_1.e.a, arg_0, arg_0, vec4<i32>(-var_1.c, var_1.c, 1i, 0i) & var_1.d.d));
    global0 = array<Struct_1, 15>();
    let var_3 = func_3();
    return var_2;
}

fn func_1() -> vec4<bool> {
    global0 = array<Struct_1, 15>();
    let var_0 = func_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), firstTrailingBit(1i)));
    var var_1 = min(~_wgslsmith_mod_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.c.x, var_0.a, 4270u), vec4<u32>(0u, 49999u, u_input.d, 0u), vec4<u32>(u_input.c.x, 3586u, u_input.d, 1u))), vec4<u32>(24171u, 0u, u_input.c.x, u_input.d)), _wgslsmith_clamp_vec4_u32((select(vec4<u32>(38705u, u_input.d, u_input.d, 80767u), vec4<u32>(var_0.a, 4294967295u, 4294967295u, 4294967295u), var_0.b.x) << (~vec4<u32>(13167u, var_0.a, u_input.c.x, u_input.d) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, u_input.d, var_0.a, 1u), vec4<u32>(0u, var_0.a, u_input.c.x, 4294967295u)) % vec4<u32>(32u)), ~max(vec4<u32>(var_0.a, u_input.c.x, var_0.a, 23087u), firstLeadingBit(vec4<u32>(var_0.a, var_0.a, u_input.c.x, 15921u))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(46688u, var_0.a, u_input.d, var_0.a) << (vec4<u32>(var_0.a, u_input.c.x, 4294967295u, var_0.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d, 0u, 16086u), vec4<u32>(u_input.d, 31710u, var_0.a, 26766u), vec4<u32>(var_0.a, 33304u, var_0.a, 17696u))))));
    let var_2 = _wgslsmith_sub_i32(-2147483647i, u_input.a);
    var_1 = vec4<u32>(var_0.a, var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x >> (~24240u % 32u), 0u, ~abs(u_input.d)), var_1.xwz), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_1.x, func_2(var_2).a), firstTrailingBit(u_input.c.x), var_0.a));
    return !select(vec4<bool>(_wgslsmith_add_i32(var_0.d.c, var_2) > var_2, var_0.b.x, false, var_0.b.x), !(!(!vec4<bool>(true, false, var_0.b.x, var_0.b.x))), vec4<bool>(var_0.b.x, !func_2(-13822i).b.x, true, true));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = u_input.a;
    global0 = array<Struct_1, 15>();
    var var_1 = func_2(u_input.a);
    return func_2(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(func_2(29378i).d.b, var_1.d.c, -12186i), reverseBits(~max(u_input.b, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = ~(~(-(~vec2<i32>(9866i, u_input.b)) >> (_wgslsmith_mult_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u))));
    let var_1 = countOneBits(u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-583f + 1f);
    let var_3 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, 861f, 1262f, var_2)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-385f, -476f, -759f, 379f), vec4<f32>(var_2, var_2, 2533f, -127f), func_1())), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))), 2147483647i, _wgslsmith_clamp_i32(min(0i, ~(-2147483647i)), var_0.x, abs(-1i)), vec4<i32>(-(var_1 | u_input.a), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1, -24715i), _wgslsmith_sub_i32(0i, var_1)), 0i, var_1)));
    let var_4 = -vec2<i32>(var_0.x, func_2(~(~0i)).d.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x | _wgslsmith_mult_u32(4294967295u, ~var_3.a), 0u);
}

