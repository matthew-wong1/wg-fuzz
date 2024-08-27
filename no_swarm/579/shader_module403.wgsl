struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_2, 18>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    global3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1624f * 976f) - global3.a), vec2<f32>(global3.a, global3.b.x), global2[_wgslsmith_index_u32(abs(~4294967295u), 18u)], Struct_2(~15949i, ~u_input.a, !any(global3.c.d.a), global3.e.d), global2[_wgslsmith_index_u32(~u_input.b.x, 18u)]);
    global1 = array<Struct_3, 11>();
    var var_0 = global2[_wgslsmith_index_u32(34014u, 18u)];
    return 11624u;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global2 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(vec2<u32>(min(44790u, 49619u), func_3(select(vec4<i32>(2147483647i, 2147483647i, global3.e.a, 5560i), vec4<i32>(global3.e.a, -15675i, global3.e.a, -46450i), vec4<bool>(false, global3.e.c, false, true)), -29813i, _wgslsmith_mult_vec3_u32(vec3<u32>(global3.c.b, 1u, 0u), vec3<u32>(35805u, global3.c.b, u_input.a)))), max(abs(u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(34491u, global3.c.d.c), firstLeadingBit(u_input.b)))));
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    let var_1 = vec2<i32>(reverseBits(_wgslsmith_add_i32(31150i, abs(-10416i))) ^ _wgslsmith_dot_vec4_i32(-arg_0, select(vec4<i32>(1i, arg_0.x, arg_0.x, -9417i), arg_0, global3.e.c & arg_1)), _wgslsmith_dot_vec4_i32(vec4<i32>(55551i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), arg_0.wz), -2147483647i, 4717i), arg_0));
    return Struct_1(vec3<bool>(all(vec4<bool>(global3.e.c, true, false, false)) & false, ~(~1i) < firstTrailingBit(select(-2147483647i, -1i, false)), 446f == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.a))))), select(true, global3.d.c, any(!vec4<bool>(arg_1, global3.e.d.b, false, arg_1))), _wgslsmith_sub_u32(firstLeadingBit(~4294967295u), ~(~global3.c.b)), !select(global3.c.d.a.zy, select(!global3.d.d.d, global3.e.d.d, 2147483647i == global3.e.a), any(global3.d.d.a.zx)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<Struct_3, 11>();
    global2 = array<Struct_2, 18>();
    var var_0 = Struct_2(~_wgslsmith_sub_i32(firstLeadingBit(global3.e.a >> (36058u % 32u)), -30544i), 5770u, true, arg_0);
    global1 = array<Struct_3, 11>();
    var_0 = Struct_2(_wgslsmith_mult_i32(-39456i, 5426i >> (_wgslsmith_mod_u32(u_input.b.x, ~arg_2) % 32u)), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, max(var_0.b, 0u ^ global3.e.b))), all(select(!(!vec4<bool>(false, true, arg_1.a.x, arg_1.d.x)), !select(vec4<bool>(arg_1.b, arg_1.d.x, var_0.d.b, arg_0.d.x), vec4<bool>(global3.e.c, global3.d.d.d.x, false, arg_1.b), vec4<bool>(true, global3.d.d.d.x, var_0.d.a.x, arg_1.b)), !select(vec4<bool>(arg_1.a.x, true, arg_0.a.x, true), vec4<bool>(false, false, var_0.d.b, arg_1.d.x), vec4<bool>(arg_1.d.x, false, true, arg_1.d.x)))), func_2(reverseBits(abs(firstLeadingBit(vec4<i32>(-1i, -2147483647i, 5195i, arg_3.x)))), true, 0i));
    return global2[_wgslsmith_index_u32(firstLeadingBit(func_2(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(102195i, var_0.a, 0i, 1i), vec4<i32>(global3.d.a, 2147483647i, var_0.a, arg_3.x))) >> (vec4<u32>(71671u, 0u, 4294967295u, _wgslsmith_add_u32(var_0.b, 2945u)) % vec4<u32>(32u)), all(vec3<bool>(arg_0.b, -1i > var_0.a, any(arg_0.a.xy))), arg_3.x).c), 18u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global3 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(172f)))) - _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(-global3.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global3.b)))), arg_0, func_4(Struct_1(global3.d.d.a, _wgslsmith_f_op_f32(-global3.b.x) == _wgslsmith_f_op_f32(min(-614f, -824f)), 0u, func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0.a, arg_2.a, arg_0.a), vec4<i32>(global3.e.a, global3.c.a, arg_0.a, 2147483647i)), func_4(Struct_1(arg_1.a, arg_2.c, 1u, arg_0.d.d), global3.e.d, 4294967295u, vec3<i32>(arg_2.a, arg_0.a, global3.c.a)).d.b, global3.c.a).d), Struct_1(select(arg_0.d.a, select(arg_0.d.a, vec3<bool>(false, false, false), true), global3.d.d.a), false, 32109u, !func_4(Struct_1(vec3<bool>(arg_2.c, true, arg_1.a.x), false, arg_1.c, vec2<bool>(false, arg_0.d.a.x)), arg_2.d, 1u, vec3<i32>(arg_2.a, global3.e.a, -13071i)).d.a.zz), 28425u, vec3<i32>(-(arg_0.a ^ arg_0.a), global3.e.a, 1i)), func_4(arg_0.d, func_4(func_4(func_2(vec4<i32>(-2147483647i, arg_2.a, global3.d.a, 1i), global3.d.c, arg_0.a), arg_0.d, min(38704u, global3.c.d.c), abs(vec3<i32>(2147483647i, global3.d.a, 1i))).d, arg_1, ~_wgslsmith_sub_u32(u_input.a, global3.e.b), ~vec3<i32>(-29985i, -1i, arg_0.a) | max(vec3<i32>(27480i, 1i, 2147483647i), vec3<i32>(-1i, global3.d.a, -33660i))).d, _wgslsmith_mod_u32(~arg_2.b, _wgslsmith_div_u32(u_input.b.x, u_input.a)), vec3<i32>(-16498i, -arg_0.a, -1i) ^ -_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, 1i), vec3<i32>(arg_0.a, arg_2.a, -17126i))));
    global2 = array<Struct_2, 18>();
    return 1i;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    global0 = 514f;
    global0 = 1000f;
    let var_0 = arg_1.d.a.yy;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.a, -1280f, true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.b.x + -1000f), _wgslsmith_f_op_f32(global3.b.x + -1658f), all(arg_1.d.a)))), -1485f), Struct_2(func_5(func_4(func_2(vec4<i32>(52580i, 0i, arg_1.a, global3.c.a), false, 1i), func_2(vec4<i32>(2147483647i, -1i, arg_1.a, 2147483647i), false, arg_1.a), 73972u, _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, arg_1.a), vec3<i32>(-11465i, 1i, global3.d.a))), global3.e.d, Struct_2(global3.d.a, 16003u >> (arg_1.b % 32u), any(vec2<bool>(arg_0, arg_0)), global3.c.d)), _wgslsmith_sub_u32(13548u, ~global3.e.d.c), select(!(942f <= global3.b.x), any(arg_1.d.d), !func_4(Struct_1(vec3<bool>(true, true, global3.c.c), false, 44816u, vec2<bool>(global3.d.c, false)), Struct_1(global3.d.d.a, global3.e.d.d.x, 0u, global3.c.d.a.yx), global3.c.b, vec3<i32>(-1i, 1i, arg_1.a)).d.b), global3.d.d), Struct_2(arg_1.a, func_3(select(vec4<i32>(global3.e.a, 2147483647i, arg_1.a, global3.c.a) << (vec4<u32>(12800u, u_input.b.x, arg_1.b, global3.e.d.c) % vec4<u32>(32u)), ~vec4<i32>(0i, arg_1.a, arg_1.a, global3.c.a), select(vec4<bool>(arg_1.d.d.x, true, false, true), vec4<bool>(arg_1.c, arg_0, global3.e.c, true), vec4<bool>(arg_0, arg_1.c, arg_0, arg_0))), _wgslsmith_sub_i32(arg_1.a & 26438i, 0i), reverseBits(~vec3<u32>(global3.c.d.c, 3482u, arg_1.d.c))), !(-442f > global3.b.x) && true, func_4(arg_1.d, func_2(abs(vec4<i32>(32172i, 1i, -33700i, -2147483647i)), true, 2976i), ~1u, _wgslsmith_mult_vec3_i32(~vec3<i32>(-13624i, 17169i, -36813i), vec3<i32>(5004i, arg_1.a, global3.d.a) | vec3<i32>(global3.e.a, 2147483647i, 13910i))).d), func_4(arg_1.d, global3.d.d, 4294967295u, _wgslsmith_mod_vec3_i32(~(-vec3<i32>(arg_1.a, 56654i, global3.e.a)), vec3<i32>(_wgslsmith_mult_i32(global3.d.a, 1910i), ~global3.e.a, 2147483647i))));
    var var_2 = !vec4<bool>(global3.c.c, var_1.d.c, false, true);
    return firstTrailingBit(arg_1.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(global3.e.c, global3.c.d.a.x, global3.d.c), select(!select(global3.c.d.a, vec3<bool>(global3.d.d.b, global3.e.c, global3.d.d.d.x), false), !vec3<bool>(global3.d.d.b, false, global3.c.c), any(!vec2<bool>(false, global3.e.c))), vec3<bool>(!any(vec4<bool>(false, global3.e.c, false, global3.c.c)), global3.c.c, global3.e.c));
    let var_1 = Struct_2(26512i, func_1(false, global3.e), func_2(vec4<i32>(-global3.e.a, _wgslsmith_mod_i32(global3.c.a, global3.c.a), -global3.d.a, -10112i >> (global3.c.d.c % 32u)), false, global3.e.a).a.x && false, Struct_1(!var_0, global3.d.d.d.x, _wgslsmith_div_u32(_wgslsmith_add_u32(~46484u, _wgslsmith_mult_u32(u_input.b.x, 0u)), ~1u), !(!(!vec2<bool>(var_0.x, global3.d.d.a.x)))));
    let var_2 = firstTrailingBit(-6391i) >> (u_input.b.x % 32u);
    var var_3 = !func_2(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 101041i, -17937i, var_1.a), _wgslsmith_div_vec4_i32(vec4<i32>(global3.d.a, 57568i, global3.e.a, global3.d.a), vec4<i32>(18360i, 0i, global3.d.a, 14816i))), func_2(~vec4<i32>(19904i, var_1.a, -2147483647i, global3.c.a), var_1.c, countOneBits(-3842i)).d.x, var_2).b;
    var var_4 = vec4<u32>(global3.e.b, 631u, _wgslsmith_div_u32(global3.e.b, 22641u), firstTrailingBit(4294967295u) << (_wgslsmith_mult_u32(39172u, 1u) % 32u));
    var var_5 = select(4294967295u, func_3(vec4<i32>(global3.c.a, 2147483647i << (var_1.d.c % 32u), 1i, max(var_1.a, var_2)), -1i, ~var_4.wwz) << (55939u % 32u), var_1.d.a.x);
    var var_6 = Struct_1(!func_2(~_wgslsmith_sub_vec4_i32(vec4<i32>(15242i, -56141i, var_1.a, var_2), vec4<i32>(global3.e.a, -2147483647i, 0i, global3.e.a)), func_4(func_2(vec4<i32>(var_1.a, global3.d.a, var_1.a, global3.e.a), true, var_1.a), func_2(vec4<i32>(2147483647i, var_1.a, -1i, -2147483647i), false, 0i), 5231u, vec3<i32>(0i, global3.d.a, var_2) | vec3<i32>(2147483647i, var_2, 0i)).c, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(var_1.a, global3.c.a)), 0i)).a, global3.e.c, firstLeadingBit(40494u), !(!var_1.d.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.a, 1u), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.a, func_4(Struct_1(vec3<bool>(true, true, true), true, global3.e.d.c, var_6.d), var_1.d, global3.d.d.c, vec3<i32>(-2147483647i, -1074i, -1415i)).a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(21700i, -1i, -2147483647i), vec3<i32>(0i, var_2, var_1.a))), 2147483647i), ~reverseBits(firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, 92924u, var_1.b))), var_4.x);
}

