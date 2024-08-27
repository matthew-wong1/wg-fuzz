struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 25>;

var<private> global2: array<Struct_3, 21>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<i32>(43891i, 14426i, 0i), vec4<i32>(i32(-2147483648), -1i, 57488i, -245i)));

var<private> global4: vec2<u32> = vec2<u32>(118554u, 44569u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> i32 {
    global3 = Struct_2(Struct_1(~(~global3.a.a), global3.a.b));
    global1 = array<vec4<u32>, 25>();
    let var_0 = vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(global4.x >> (45236u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(42593u, arg_0, 580u, global4.x), global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), ~_wgslsmith_div_u32(arg_0, 71206u)), ~firstLeadingBit(u_input.b.x));
    let var_1 = u_input.a;
    var var_2 = Struct_2(arg_1.a.a);
    return ~(i32(-1i) * -u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = vec2<bool>(true, true);
    global0 = Struct_1(firstLeadingBit(firstTrailingBit(reverseBits(global0.a))), arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1559f))));
    global4 = vec2<u32>(1u, ~max(_wgslsmith_clamp_u32(min(global4.x, 1u), firstTrailingBit(arg_2.x), arg_2.x & u_input.b.x), reverseBits(~0u)));
    let var_2 = -28033i == ~arg_0.a.x;
    return -_wgslsmith_mod_vec3_i32(global0.a, -abs(vec3<i32>(-8426i, u_input.a, u_input.a))) >> (~vec3<u32>(arg_2.x, 1u, 0u) % vec3<u32>(32u));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(func_4(Struct_1(global0.a, global3.a.b | (global3.a.b << (global1[_wgslsmith_index_u32(22578u, 25u)] % vec4<u32>(32u)))), i32(-1i) * -3429i, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(u_input.b.x, global4.x, 54166u)), abs(global4.x)), Struct_3(Struct_2(global3.a), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.a.x, global0.b.x, global3.a.b.x), vec3<i32>(0i, 21939i, u_input.a)), vec3<i32>(40593i, global0.a.x, 0i)), Struct_2(Struct_1(vec3<i32>(1i, global3.a.b.x, 1i), global0.b)), Struct_2(Struct_1(vec3<i32>(global3.a.b.x, 12487i, global0.a.x), global0.b)), 4402i & func_3(4294967295u, Struct_3(Struct_2(Struct_1(global3.a.a, global3.a.b)), global3.a.a, Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 0i), global0.b)), Struct_2(global3.a), global0.b.x)))), global3.a.b);
    let var_1 = global3.a;
    var var_2 = Struct_2(var_0);
    var var_3 = global2[_wgslsmith_index_u32(global4.x, 21u)];
    let var_4 = Struct_3(var_3.c, firstLeadingBit(~global3.a.a ^ (vec3<i32>(16998i, global3.a.a.x, global0.a.x) >> (vec3<u32>(u_input.b.x, 1u, global4.x) % vec3<u32>(32u)))), var_3.d, Struct_2(var_2.a), ~_wgslsmith_add_i32(-1i, firstLeadingBit(var_1.a.x)));
    return countOneBits(u_input.a);
}

fn func_1() -> i32 {
    var var_0 = true;
    let var_1 = vec2<i32>(1i, -2147483647i & reverseBits(func_2()));
    let var_2 = Struct_3(Struct_2(Struct_1(-global3.a.a, -global0.b)), select(countOneBits(vec3<i32>(func_4(global3.a, 0i, u_input.b.xz, Struct_3(Struct_2(Struct_1(global3.a.a, vec4<i32>(-266i, -13828i, global0.a.x, 15570i))), vec3<i32>(23651i, -2147483647i, u_input.a), Struct_2(global3.a), Struct_2(Struct_1(vec3<i32>(50570i, u_input.a, -10983i), global3.a.b)), 52720i)).x, var_1.x >> (u_input.b.x % 32u), global3.a.b.x | var_1.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.x, global3.a.b.x), var_1), global0.a.x, ~_wgslsmith_dot_vec2_i32(global0.a.xz, global3.a.a.yy)), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), Struct_2(global3.a), Struct_2(Struct_1(global0.b.yzz, global0.b)), ~(~u_input.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1842f, 1518f, -114f) + vec4<f32>(-152f, 566f, -722f, 589f)), _wgslsmith_div_vec4_f32(vec4<f32>(-919f, -2422f, -1838f, -785f), vec4<f32>(837f, 527f, -173f, 385f))))), vec4<f32>(_wgslsmith_f_op_f32(-1459f + _wgslsmith_f_op_f32(abs(-598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1908f * 802f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(437f, -1073f)), -747f))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1249f, var_3.x, 1398f)), vec3<f32>(var_3.x, var_3.x, -815f)))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(func_1(), 1i, global3.a.b.x), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(25236i, u_input.a), _wgslsmith_clamp_i32(-2147483647i, -9619i, -2147483647i)), _wgslsmith_div_i32(countOneBits(global0.a.x), -global0.b.x)), _wgslsmith_mod_i32(reverseBits(global3.a.a.x), func_2()), global0.a.x ^ firstLeadingBit(1i), global0.b.x));
    let var_1 = ~select(var_0.a.x, _wgslsmith_dot_vec4_i32(global3.a.b, var_0.b), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(~max(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), abs(1u)), ~u_input.b.x), ~(~(~15061u)) >> (~global4.x % 32u), select(43334u, select(~select(14213u, 952u, true), 4294967295u, all(vec4<bool>(false, true, false, false)) & true), (_wgslsmith_div_f32(-1334f, 1411f) > _wgslsmith_f_op_f32(sign(1203f))) && false));
    global1 = array<vec4<u32>, 25>();
    global1 = array<vec4<u32>, 25>();
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(16947u, 10834u), 21u)];
    var var_4 = Struct_3(var_3.d, abs(func_4(var_0, -select(global3.a.b.x, -1i, true), var_2.xx, Struct_3(var_3.a, -vec3<i32>(var_0.b.x, -1i, 39741i), Struct_2(var_0), var_3.d, ~global0.b.x))), Struct_2(Struct_1(func_4(var_3.d.a, var_3.d.a.b.x, var_2.yy << (var_2.yy % vec2<u32>(32u)), global2[_wgslsmith_index_u32(~4294967295u, 21u)]), global3.a.b)), Struct_2(Struct_1(~(-vec3<i32>(-1i, 2147483647i, -778i)), var_0.b)), -var_1);
    var var_5 = Struct_1(vec3<i32>(func_1(), _wgslsmith_mod_i32(abs(-u_input.a), global3.a.a.x), var_1), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.a.x, -_wgslsmith_clamp_i32(1i, -2231i, u_input.a), global3.a.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, var_3.a.a.b.x), -28754i, ~(-2147483647i), 2147483647i), var_0.b, global0.b | vec4<i32>(-7853i, 2147483647i, var_0.b.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~(u_input.a | -1i), _wgslsmith_clamp_i32(func_3(global4.x, Struct_3(Struct_2(global3.a), var_0.a, var_4.a, Struct_2(Struct_1(vec3<i32>(global3.a.a.x, var_4.e, var_3.e), var_3.d.a.b)), 1i)), 2147483647i >> (0u % 32u), u_input.a & global0.b.x), var_1, 31055i), global4.x & _wgslsmith_dot_vec3_u32(u_input.b, var_2 | vec3<u32>(60822u, 18887u, var_2.x)), var_2, -18718i);
}

