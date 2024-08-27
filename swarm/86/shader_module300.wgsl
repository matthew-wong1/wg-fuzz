struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 6> = array<f32, 6>(-1740f, 159f, -394f, -837f, 139f, 1023f);

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1035f)) * arg_2.c.b.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-718f, -111f)), _wgslsmith_f_op_f32(max(arg_2.c.b.a.x, global1[_wgslsmith_index_u32(1u, 6u)]))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstTrailingBit(1u) & ~21319u, 6u)] * _wgslsmith_f_op_f32(arg_2.c.a.a.x - _wgslsmith_f_op_f32(ceil(-384f)))), _wgslsmith_f_op_f32(floor(-122f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.b.zyy, _wgslsmith_f_op_vec3_f32(arg_2.b.wzz - vec3<f32>(594f, global1[_wgslsmith_index_u32(0u, 6u)], -2287f)))) - _wgslsmith_f_op_vec3_f32(ceil(arg_2.b.xwx))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(297f, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(arg_2.b.wzw - arg_2.b.wyz)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_2.b.wyw))), global0.xwx)))));
    global2 = array<Struct_4, 3>();
    global0 = !(!vec4<bool>(!(!global0.x), global0.x, any(!global0.yxx), !(760f != arg_1)));
    global0 = select(!vec4<bool>(!(35923u == arg_0.x), !(!global0.x), all(vec4<bool>(true, true, true, global0.x)), true), vec4<bool>(true | global0.x, global0.x, any(!select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x), global0.x)), false), true);
    return vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -21306i, 2147483647i, arg_2.a.x), ~vec4<i32>(var_0, u_input.a.x, -9313i, 0i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-16248i, u_input.b, 2147483647i, var_0), vec4<i32>(u_input.a.x, arg_2.a.x, arg_2.a.x, var_0)) & _wgslsmith_div_vec4_i32(vec4<i32>(var_0, -2147483647i, var_0, u_input.a.x), vec4<i32>(2147483647i, 2147483647i, 9480i, -1i)), vec4<i32>(50745i, firstLeadingBit(u_input.b), arg_2.a.x | arg_2.a.x, ~arg_2.a.x))), 1i, -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-6354i, 1i, u_input.b), -vec3<i32>(var_0, arg_2.a.x, -1i)), ~(~vec3<i32>(var_0, 2701i, -32816i))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0, arg_0);
    let var_1 = -806f;
    let var_2 = u_input.a.x == countOneBits(_wgslsmith_mod_i32(-3062i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(12949i, u_input.a.x, 15673i, u_input.a.x), vec4<i32>(-5378i, 10664i, -9977i, 25710i)), func_3(vec2<u32>(51244u, 60610u), arg_0.a.x, Struct_3(u_input.a, vec4<f32>(-591f, 163f, 1048f, var_0.b.a.x), Struct_2(var_0.b, arg_0))))));
    var var_3 = _wgslsmith_f_op_f32(-600f - 1f);
    global1 = array<f32, 6>();
    return Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.a, arg_0.a))), vec2<bool>(!global0.x, !global0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = arg_2.a;
    var var_1 = -621f > arg_2.c.a.a.x;
    global2 = array<Struct_4, 3>();
    global0 = select(select(vec4<bool>(true, true, true, global0.x), !(!(!vec4<bool>(true, global0.x, false, global0.x))), vec4<bool>(global0.x, true, false, all(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), true)))), select(!(!vec4<bool>(global0.x, global0.x, true, false)), !(!(!vec4<bool>(false, global0.x, true, global0.x))), !(!vec4<bool>(global0.x, global0.x, false, true))), select(vec4<bool>(true, true, !any(vec3<bool>(global0.x, global0.x, true)), true), select(vec4<bool>(all(vec4<bool>(false, false, global0.x, global0.x)), global0.x, true, true), !select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, false, global0.x, true)), true)), any(!global0.xx)));
    var_1 = true;
    return arg_2.b;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(abs(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_1(arg_2.a)), Struct_3(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(22095u, 6u)], -862f, 449f, arg_2.a.x) * vec4<f32>(arg_2.a.x, 1208f, -1050f, 1078f)), func_2(arg_2)), Struct_4(reverseBits(1i), vec3<f32>(-400f, global1[_wgslsmith_index_u32(0u, 6u)], -1350f), func_2(arg_2)), func_2(func_2(arg_2).a))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(125f, global1[_wgslsmith_index_u32(arg_1.x, 6u)], arg_2.a.x), vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x))))))), func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(arg_2.a)))).b));
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~arg_1, arg_1), ~select(~vec3<u32>(58575u, 0u, 4294967295u), _wgslsmith_div_vec3_u32(arg_1, arg_1), !global0.yyz), arg_1));
    global2 = array<Struct_4, 3>();
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, firstLeadingBit(vec2<i32>(arg_0, -var_0.a))), max(firstLeadingBit(-min(u_input.a, u_input.a)), ~u_input.a | u_input.a));
    var_2 = firstTrailingBit(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(var_0.a, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(0i, 1i)))), vec2<i32>(min(4177i, var_0.a), ~1i & _wgslsmith_mult_i32(u_input.b, 61682i))));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b, -2147483647i), firstTrailingBit(u_input.a.x), -u_input.a.x, -u_input.b), firstTrailingBit(-vec4<i32>(-1i, -1i, 2147483647i, u_input.b))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(21063u, 4294967295u, 11462u), firstTrailingBit(vec3<u32>(1u, 1u, 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 6u)], 316f))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 6u)];
    global1 = array<f32, 6>();
    let var_2 = 1108i;
    global0 = vec4<bool>(any(select(!vec3<bool>(global0.x, global0.x, true), select(select(global0.wxw, global0.zww, vec3<bool>(false, global0.x, global0.x)), !vec3<bool>(global0.x, true, global0.x), global0.x), global0.x)), true, true | global0.x, global0.x);
    let var_3 = func_1(21520i, min(vec3<u32>(_wgslsmith_mult_u32(15382u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 9188u), vec4<u32>(0u, 0u, 0u, 1u)), 4294967295u) | abs(vec3<u32>(1u, 1u, 1u)), ~(~(~vec3<u32>(4294967295u, 1u, 4961u)))), var_0.a).b;
    var var_4 = any(!vec4<bool>(!global0.x, !global0.x, false, all(vec2<bool>(global0.x, true))));
    var var_5 = Struct_3(~vec2<i32>(56954i, _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -38238i)), vec4<f32>(838f, _wgslsmith_f_op_f32(-var_0.b.a.x), -1000f, var_3.a.x), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32660u, 42487u), vec2<u32>(1u, 1u)), ~(~8449u), abs(1u) >> (0u % 32u), 4294967295u), vec4<u32>(1u, 16843u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(90948u, 130786u, 1u, 30994u), ~vec4<u32>(1u, 15050u, 0u, 27578u)))));
}

