struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 7914u, 4294967295u, 46540u);

var<private> global2: vec3<bool>;

var<private> global3: u32 = 1u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global0.x, global0.x)) << ((global1.x ^ ~43420u) % 32u), 1u, ~_wgslsmith_clamp_u32(global0.x ^ 137625u, global1.x, 49053u)), _wgslsmith_dot_vec2_i32(-countOneBits(~vec2<i32>(u_input.a, u_input.a)), max(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), ~firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), any(!(!vec4<bool>(global2.x, true, global2.x, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1597f + -1084f)) + 664f)));
    var var_1 = ~(~select(_wgslsmith_div_i32(u_input.a, 7164i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -44370i, -1i), vec3<i32>(u_input.a, -2147483647i, var_0.b)), var_0.c));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.a, _wgslsmith_f_op_f32(f32(-1f) * -172f))) - var_0.d.a));
    global0 = _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, 13568u), vec4<u32>(4294967295u, 1u, 58275u, 60713u))) ^ vec4<u32>(~global0.x, 1u, _wgslsmith_div_u32(global0.x, 24591u >> (global1.x % 32u)), var_0.a.x), ~(~(~(~vec4<u32>(1u, global0.x, 4294967295u, 17394u)))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, var_0.a.x, var_0.a.x, 4294967295u), vec4<u32>(0u, global0.x, 15085u, 3618u)), ~vec4<u32>(global1.x, global1.x, 26720u, global0.x)), ~vec4<u32>(72917u, ~1u, countOneBits(63215u), _wgslsmith_add_u32(7660u, 3279u)), ~(~vec4<u32>(0u, 4294967295u, 4294967295u, 61749u))));
    global0 = max(vec4<u32>(global1.x >> (20814u % 32u), abs(abs(countOneBits(4058u))), max(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.x, global1.x), abs(1u)), global1.x), 1u), countOneBits(firstTrailingBit(countOneBits(vec4<u32>(0u, global0.x, 43332u, 60549u)))));
    return vec4<i32>(-43716i, u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(-39603i, -1i, -29606i, 4003i) >> (vec4<u32>(global1.x, 0u, 4294967295u, global0.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -39121i, 0i, 61991i), vec4<i32>(-20743i, u_input.a, var_0.b, -5187i), vec4<i32>(var_0.b, 4326i, 14466i, var_0.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-27354i, var_0.b, 1i, var_0.b), vec4<i32>(2147483647i, -22359i, -2147483647i, var_0.b)))), vec4<i32>(-1i, min(~(-38067i), i32(-1i) * -24922i), -u_input.a, 1i)), -(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-10474i, var_0.b, 11448i, var_0.b), vec4<i32>(1i, u_input.a, 23481i, u_input.a)), -33738i) | var_0.b));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_i32(-abs(~vec4<i32>(-6724i, -9871i, -6655i, u_input.a)) ^ select((vec4<i32>(arg_0, 0i, 61820i, -13306i) | vec4<i32>(arg_0, -1i, arg_0, 2147483647i)) ^ abs(vec4<i32>(u_input.a, 14625i, -61948i, 1i)), func_3() | min(vec4<i32>(-33877i, arg_0, u_input.a, -45040i), vec4<i32>(67552i, arg_0, 0i, arg_0)), !select(arg_1, arg_1, arg_1)), _wgslsmith_add_vec4_i32(-min(~vec4<i32>(arg_0, u_input.a, -3166i, u_input.a), vec4<i32>(u_input.a, u_input.a, 10325i, -2147483647i)), firstLeadingBit(vec4<i32>(arg_0, -u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(4089i, arg_0, -31223i))))));
    var var_1 = firstTrailingBit(select(1i, ~arg_0, true) >> (global1.x % 32u));
    let var_2 = Struct_2(arg_2.wyw, u_input.a, global2.x && any(vec3<bool>(all(vec4<bool>(global2.x, global2.x, global2.x, arg_1.x)), false, arg_1.x)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -583f) - _wgslsmith_f_op_f32(-390f * -120f))))));
    var var_3 = 11944u;
    var_3 = ~firstTrailingBit(arg_2.x);
    return Struct_2(vec3<u32>(4294967295u, arg_2.x, global1.x), -(1i & ~arg_0), !any(select(select(arg_1.xxw, vec3<bool>(arg_1.x, true, global2.x), var_2.c), arg_1.zyz, var_2.c & var_2.c)), Struct_1(var_2.d.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(_wgslsmith_add_i32(arg_1.b, u_input.a), !vec4<bool>(true, func_2(u_input.a, !vec4<bool>(true, arg_0.c, true, arg_0.c), abs(vec4<u32>(arg_1.a.x, global1.x, 19813u, 55539u))).c, false, any(select(vec3<bool>(arg_0.c, arg_0.c, global2.x), vec3<bool>(false, arg_1.c, global2.x), false))), ~(~vec4<u32>(arg_1.a.x, _wgslsmith_mult_u32(global1.x, 71795u), arg_1.a.x, _wgslsmith_mod_u32(arg_0.a.x, global0.x))));
    let var_1 = arg_0;
    let var_2 = func_2(~(_wgslsmith_mod_i32(i32(-1i) * -23501i, min(u_input.a, arg_1.b)) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 6945u, global0.x, var_0.a.x), vec4<u32>(1u, global0.x, 4294967295u, 14645u), vec4<bool>(arg_1.c, arg_0.c, arg_1.c, arg_0.c)), max(vec4<u32>(6403u, var_1.a.x, 4294967295u, global0.x), vec4<u32>(global1.x, var_1.a.x, var_0.a.x, var_0.a.x))) % 32u)), !select(!(!vec4<bool>(arg_0.c, false, arg_1.c, true)), select(vec4<bool>(global2.x, false, var_0.c, var_0.c), !vec4<bool>(true, arg_0.c, global2.x, true), true), countOneBits(var_0.b) == _wgslsmith_sub_i32(22785i, 13110i)), vec4<u32>(global0.x, 5106u, _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_dot_vec3_u32(~global0.xzy, global0.zyx)), 1u));
    var var_3 = !vec4<bool>(true, all(select(select(vec4<bool>(true, false, var_2.c, false), vec4<bool>(arg_1.c, var_2.c, true, global2.x), vec4<bool>(true, var_2.c, arg_0.c, true)), vec4<bool>(var_2.c, global2.x, var_2.c, true), select(vec4<bool>(false, arg_0.c, global2.x, arg_1.c), vec4<bool>(false, false, true, true), vec4<bool>(global2.x, false, true, arg_0.c)))), any(!(!vec4<bool>(true, true, var_2.c, false))), any(vec4<bool>(global2.x && false, any(vec4<bool>(false, true, true, var_1.c)), false | var_0.c, 2888u >= var_2.a.x)));
    let var_4 = select(vec3<bool>(!var_0.c, global2.x | !var_3.x, !arg_1.c), !var_3.www, !arg_0.c && true);
    return -477f;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> Struct_3 {
    global0 = vec4<u32>(1u, ~(global1.x | _wgslsmith_dot_vec2_u32(global0.xw | global1.xw, ~global0.zz)), ~(~_wgslsmith_div_u32(global1.x, ~global0.x)), 27818u);
    let var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(func_4(func_2(u_input.a, !vec4<bool>(true, arg_0, arg_0, false), vec4<u32>(59818u & global0.x, 1u | global0.x, ~15825u, 46448u)), Struct_2(~global0.xzw, func_3().x, !(!arg_2), Struct_1(1474f)))));
    var var_1 = arg_0;
    global2 = vec3<bool>(all(vec2<bool>(true, arg_0 | false)), global2.x, all(!select(!vec4<bool>(arg_0, global2.x, false, true), select(vec4<bool>(false, true, true, arg_2), vec4<bool>(true, global2.x, false, global2.x), arg_2), global2.x)));
    let var_2 = !select(global2.yy, vec2<bool>(false, true), vec2<bool>(select(false, false, true && arg_0), true));
    return Struct_3(func_3().xyw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(~12062u, global1.x | 0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, 4294967295u >> (global0.x % 32u)), ~global1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 4294967295u), global0.zwy)), global0.x & global0.x);
    let var_0 = func_1(true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(-1f)), false);
    global0 = vec4<u32>(53105u, _wgslsmith_sub_u32(global0.x & global1.x, 4294967295u), global0.x, ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(25509u, global0.x, 18540u, global1.x) & vec4<u32>(75718u, global1.x, 0u, global1.x)), vec4<u32>(36583u ^ global1.x, _wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_sub_u32(global1.x, global1.x), ~1u)));
    var var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_clamp_u32(global1.x, ~0u, 1u) & func_2(u_input.a >> (18103u % 32u), select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, false, global2.x, global2.x), global2.x), vec4<u32>(4294967295u, global1.x, global0.x, global0.x)).a.x), global1.x);
    let var_2 = _wgslsmith_div_f32(-2152f, _wgslsmith_f_op_f32(func_4(Struct_2(~global0.yyz, _wgslsmith_sub_i32(~(-42358i), firstTrailingBit(-1i)), func_2(1i, select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(true, true, global2.x, false), true), ~vec4<u32>(39517u, global0.x, 104389u, global0.x)).c, func_2(max(2147483647i, u_input.a), !vec4<bool>(global2.x, false, true, true), firstLeadingBit(vec4<u32>(1u, global0.x, 11386u, 0u))).d), func_2(var_0.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(59291u, 4294967295u, 0u), vec3<u32>(1u, global1.x, 17306u)) % 32u), vec4<bool>(false, true, 11896i == u_input.a, !global2.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 40712u, global0.x), vec4<u32>(global1.x, 17401u, var_1.x, global0.x), ~vec4<u32>(global0.x, 72124u, var_1.x, 4294967295u))))));
    let var_3 = ~global0.x;
    var var_4 = var_0.a.x;
    let var_5 = _wgslsmith_add_u32(~global0.x, ~(~(~70276u)));
    var var_6 = _wgslsmith_div_i32(u_input.a, ~var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(round(-2070f))), var_2, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_2)), -138f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1130f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, 3177f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 * var_2)))))));
}

