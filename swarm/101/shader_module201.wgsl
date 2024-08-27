struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(-30180i), Struct_1(-35878i), Struct_1(0i), Struct_1(-60830i), Struct_1(21875i), Struct_1(-81166i), Struct_1(26169i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(0i), Struct_1(-10586i), Struct_1(-1i), Struct_1(i32(-2147483648)));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_2;

var<private> global3: array<f32, 22>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 16>();
    var var_0 = u_input.a;
    var var_1 = !select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), !vec2<bool>(true, global1.x)), vec2<bool>(false, (60501i > arg_0.d.a) || global1.x), select(vec2<bool>(true, true), select(select(vec2<bool>(false, global1.x), vec2<bool>(true, false), true), !vec2<bool>(global1.x, global1.x), !global1.x), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), false), global1.x)));
    global0 = array<Struct_1, 16>();
    let var_2 = firstLeadingBit(23407u);
    return ~reverseBits(_wgslsmith_clamp_u32(reverseBits(select(arg_0.c, 1u, global1.x)), global2.c, reverseBits(global2.c)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = func_3(arg_1.a, arg_0);
    var var_1 = vec2<bool>(!all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), (_wgslsmith_add_u32(arg_1.a.c, u_input.a.x) ^ func_3(arg_0, Struct_2(vec3<i32>(arg_3.x, 0i, arg_1.a.b.a), Struct_1(2147483647i), 64037u, Struct_1(-2147483647i)))) > _wgslsmith_sub_u32(min(11977u, global2.c) & _wgslsmith_add_u32(u_input.a.x, global2.c), _wgslsmith_dot_vec2_u32(u_input.a.yz << (u_input.a.yx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.zx))));
    return 22421u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.c, 22u)]), global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 22u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1191f, 2444f) * vec2<f32>(273f, -458f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(34138u, 22u)], -1000f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(0u, 22u)], -1400f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(global2.c, 22u)]), vec2<f32>(global3[_wgslsmith_index_u32(global2.c, 22u)], global3[_wgslsmith_index_u32(u_input.a.x, 22u)])))))), global1.x));
    let var_1 = global2.b.a;
    var var_2 = select(!select(vec2<bool>(global1.x, false), vec2<bool>(true, select(false, false, global1.x)), !(!vec2<bool>(global1.x, false))), vec2<bool>(global1.x, global1.x), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(all(vec3<bool>(global1.x, global1.x, true)), global2.d.a == 0i), global1.x));
    var var_3 = Struct_2(~(select(vec3<i32>(-32571i, 24536i, -2147483647i), ~global2.a, !vec3<bool>(false, true, global1.x)) | global2.a), Struct_1(42555i), (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, global2.c) ^ u_input.a, firstLeadingBit(vec3<u32>(global2.c, 24969u, 99063u))) ^ ~func_2(Struct_2(global2.a, global2.b, global2.c, Struct_1(global2.b.a)), Struct_3(Struct_2(vec3<i32>(0i, 0i, 0i), global2.b, global2.c, global0[_wgslsmith_index_u32(61735u, 16u)])), global2.b, global2.a.xx)) ^ ~global2.c, global2.d);
    var var_4 = select(countOneBits(global2.a.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(~var_3.d.a, global2.b.a), var_3.b.a), true) >> (_wgslsmith_mod_u32(~var_3.c, func_3(Struct_2(global2.a, Struct_1(global2.a.x), 3951u, Struct_1(var_3.d.a)), Struct_2(vec3<i32>(2147483647i, global2.d.a, global2.d.a), global0[_wgslsmith_index_u32(0u & var_3.c, 16u)], func_3(Struct_2(global2.a, Struct_1(1i), 11316u, var_3.b), Struct_2(var_3.a, Struct_1(-82377i), 3114u, global2.d)), Struct_1(32194i)))) % 32u);
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-global2.a, _wgslsmith_mod_vec3_i32(global2.a, global2.a)), global2.a) ^ _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(17895i, global2.a.x, 1i)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(global2.a, global2.a, vec3<i32>(-44526i, global2.d.a, -8125i)))), Struct_1(0i), min(firstLeadingBit(u_input.a.x << (u_input.a.x % 32u)), ~1u), func_1());
    var var_0 = vec3<u32>(global2.c << (_wgslsmith_div_u32(u_input.a.x, abs(_wgslsmith_add_u32(0u, u_input.a.x))) % 32u), u_input.a.x, global2.c);
    let var_1 = u_input.a.x >> (29890u % 32u);
    var var_2 = -211f;
    var var_3 = !vec2<bool>(global1.x, any(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, true))));
    var var_4 = Struct_3(Struct_2(global2.a, global2.b, _wgslsmith_add_u32(firstLeadingBit(countOneBits(var_1)), u_input.a.x), func_1()));
    var_3 = vec2<bool>(all(select(select(vec3<bool>(global1.x, true, false), vec3<bool>(true, false, true), var_3.x), vec3<bool>(any(vec3<bool>(var_3.x, false, true)), global1.x, false), select(select(vec3<bool>(global1.x, var_3.x, var_3.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_3(Struct_2(global2.a, Struct_1(var_4.a.d.a), reverseBits(var_1), global0[_wgslsmith_index_u32(5663u, 16u)]), Struct_2(~vec3<i32>(global2.b.a, global2.d.a, 14278i), Struct_1(global2.b.a), var_0.x, var_4.a.d)), 22u)]), global2.d.a, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(9908u, ~(~global2.c), all(vec2<bool>(false, true)) & all(vec3<bool>(true, global1.x, global1.x))), 22u)] + global3[_wgslsmith_index_u32(var_1, 22u)]), 64209u, var_4.a.d.a);
}

