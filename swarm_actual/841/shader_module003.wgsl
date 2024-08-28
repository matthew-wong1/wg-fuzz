struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(6679u, 0i, -649f);

var<private> global1: array<Struct_2, 31>;

var<private> global2: f32;

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(121092u, 1u, 62744u), vec3<u32>(22491u, 30452u, 4294967295u), vec3<u32>(1u, 84127u, 1u), vec3<u32>(20145u, 132246u, 11889u), vec3<u32>(4294967295u, 56388u, 1u), vec3<u32>(5851u, 4294967295u, 34652u), vec3<u32>(26106u, 39718u, 12328u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(~(~select(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 70463u, 4294967295u), global3[_wgslsmith_index_u32(4294967295u, 7u)]), global3[_wgslsmith_index_u32(31194u, 7u)] | vec3<u32>(global0.a, 4294967295u, global0.a)), ~(~u_input.c), arg_1.x)), 31u)];
    let var_1 = Struct_4(arg_0, select(select(!vec3<bool>(false, true, arg_1.x), !(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true), select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x)), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x), arg_1.x), vec3<bool>(true, arg_1.x && false, arg_1.x)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(1077f * global0.c))), arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c + global0.c) * _wgslsmith_f_op_f32(var_0.c.c - -1000f))));
    var var_2 = Struct_2(var_0.c, arg_0, Struct_1(~global0.a, 1i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1227f), _wgslsmith_f_op_f32(f32(-1f) * -1426f)), _wgslsmith_f_op_f32(-arg_0.c), var_1.b.x))));
    var_2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~global3[_wgslsmith_index_u32(var_0.b.a, 7u)], _wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, u_input.c), global3[_wgslsmith_index_u32(arg_0.a, 7u)])), _wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(~41489u, 7u)], ~vec3<u32>(var_2.a.a, u_input.c, arg_0.a) << (max(global3[_wgslsmith_index_u32(arg_0.a, 7u)], global3[_wgslsmith_index_u32(var_2.c.a, 7u)]) % vec3<u32>(32u))))), 31u)];
    let var_3 = Struct_3(_wgslsmith_sub_i32(max(_wgslsmith_mod_i32(-56476i, var_1.a.b) & u_input.a, 21381i), var_0.b.b & ~(~(-1i))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1611f, 726f, -2227f, -2175f))))), vec4<f32>(var_0.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -805f), 584f)), -423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.b.c, var_1.c)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c, 1616f, global0.c, arg_2.d) - vec4<f32>(arg_2.d, -430f, -1113f, -984f))) - _wgslsmith_f_op_vec4_f32(func_3(arg_2.a, select(arg_2.b.yz, arg_2.b.zz, vec2<bool>(true, arg_2.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(834f, 399f) - vec2<f32>(global0.c, arg_2.c)), _wgslsmith_f_op_f32(ceil(arg_1.b.c))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, 731f, arg_1.a.c, arg_1.c.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(462f, arg_1.b.c, arg_1.c.c, arg_2.a.c) * vec4<f32>(-2133f, -153f, 1035f, 1000f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -935f, arg_1.a.c, arg_2.d))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(417f, 400f, -750f, -627f), vec4<f32>(global0.c, arg_1.a.c, 809f, 819f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, 358f, arg_1.a.c, global0.c))))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, arg_2.d, _wgslsmith_f_op_f32(-753f + global0.c), -232f), vec4<f32>(_wgslsmith_f_op_f32(select(1057f, arg_2.a.c, arg_2.b.x)), _wgslsmith_f_op_f32(round(arg_2.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -596f), arg_1.c.c))));
    var var_1 = Struct_3(_wgslsmith_dot_vec2_i32(select(min(abs(vec2<i32>(2147483647i, -44513i)), vec2<i32>(-15420i, arg_2.a.b)), firstTrailingBit(vec2<i32>(arg_1.b.b, 58686i) & vec2<i32>(-1i, 1i)), arg_3), _wgslsmith_div_vec2_i32(-(~vec2<i32>(-1i, -1i)), vec2<i32>(~arg_1.a.b, i32(-1i) * -1i))));
    var var_2 = var_1.a;
    global1 = array<Struct_2, 31>();
    global0 = arg_2.a;
    return ~min(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.a, u_input.c, 23696u, arg_0), vec4<u32>(arg_1.b.a, u_input.c, arg_0, global0.a)), ~(~vec4<u32>(arg_0, 13662u, u_input.c, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(29398u, 40628u, global0.a, 1u) >> (vec4<u32>(28754u, arg_0, global0.a, u_input.c) % vec4<u32>(32u)), vec4<u32>(global0.a, arg_0, global0.a, 4294967295u))), vec4<u32>(arg_1.c.a & ~24700u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 20991u, arg_0, 0u), firstLeadingBit(vec4<u32>(arg_0, 0u, 1u, arg_0))), reverseBits(1u), arg_2.a.a));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = -752f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f - arg_0.x) + arg_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.c))) + global0.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + arg_0));
    global0 = Struct_1(_wgslsmith_clamp_u32(1u, global0.a, 25642u) ^ countOneBits(_wgslsmith_mult_u32(abs(0u), 0u)), 49407i | global0.b, _wgslsmith_f_op_f32(floor(arg_0.x)));
    let var_2 = Struct_3(~_wgslsmith_mod_i32(-22395i, global0.b));
    global2 = arg_3.c;
    return _wgslsmith_f_op_f32(-209f - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!vec4<bool>((global0.c <= 1000f) || true, true == select(false, true, false), false, true));
    var var_1 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.c, -601f)), _wgslsmith_f_op_f32(f32(-1f) * -122f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -837f))), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(global0.c + -571f))))) != false;
    global3 = array<vec3<u32>, 7>();
    global1 = array<Struct_2, 31>();
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 460f, global0.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, 459f, global0.c))) - vec3<f32>(global0.c, global0.c, _wgslsmith_f_op_f32(-global0.c)))), select(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(12093u, 42790u, u_input.c, u_input.c), vec4<u32>(47899u, u_input.c, 66186u, 4294967295u), !var_0.x), ~vec4<u32>(global0.a, 37453u, global0.a, 26000u) >> (vec4<u32>(1u, u_input.c, 0u, 1u) % vec4<u32>(32u))), vec4<u32>(~12842u, u_input.c, 0u, ~global0.a) << (((vec4<u32>(1u, 11285u, 0u, global0.a) >> (vec4<u32>(4294967295u, global0.a, 26564u, u_input.c) % vec4<u32>(32u))) & func_2(global0.a, Struct_2(Struct_1(u_input.c, global0.b, global0.c), Struct_1(1u, -20393i, global0.c), Struct_1(u_input.c, u_input.b, global0.c)), Struct_4(Struct_1(u_input.c, -34803i, global0.c), vec3<bool>(true, var_0.x, var_0.x), global0.c, global0.c), false)) % vec4<u32>(32u)), select(var_0, var_0, var_0)), reverseBits(select(_wgslsmith_div_vec2_u32(~vec2<u32>(28093u, u_input.c), ~vec2<u32>(0u, u_input.c)), firstTrailingBit(~vec2<u32>(u_input.c, 83475u)), var_0.x && (var_0.x && var_0.x))), Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.a, 1u, 72819u), vec4<u32>(u_input.c, 8807u, 1u, global0.a))), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f + -194f)) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global0.c)))))));
    return Struct_1(~4294967295u, countOneBits(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(19346u, u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.c))))), Struct_1(u_input.c, reverseBits(global0.b), 673f), func_1());
    let var_1 = var_0.c.b;
    global2 = _wgslsmith_f_op_f32(min(var_0.c.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f) + _wgslsmith_f_op_f32(-307f * global0.c)) * var_0.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1036f)))))));
    global1 = array<Struct_2, 31>();
    let var_2 = select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, select(false, false, true)), vec3<bool>(true, false, global0.c <= -306f), any(vec4<bool>(true, false, false, true)) || (u_input.c != u_input.c)), vec3<bool>(true, true, true), select(vec3<bool>(true, select(true, true, false), false), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -26550i, -var_1), u_input.b, -2147483647i), vec3<i32>(-(~u_input.a), u_input.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.b.b, var_0.c.b, u_input.a, global0.b), vec4<i32>(1i, -2147483647i, u_input.b, -2147483647i)), -vec4<i32>(2147483647i, 11928i, global0.b, 0i)))), 45543i);
    var var_4 = Struct_1(_wgslsmith_sub_u32(reverseBits(4294967295u), 47356u), func_1().b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(326f, var_0.a.c, var_0.b.c))), reverseBits(vec4<u32>(var_0.c.a, u_input.c, global0.a, global0.a)), _wgslsmith_add_vec2_u32(vec2<u32>(global0.a, 1u), vec2<u32>(var_0.b.a, var_0.a.a)), var_0.c)))), 1466f)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, var_4.a), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_4.a & var_0.c.a, ~1u), 7u)]) ^ (~global3[_wgslsmith_index_u32(4294967295u ^ var_4.a, 7u)] | (vec3<u32>(global0.a, global0.a, u_input.c) | global3[_wgslsmith_index_u32(65936u, 7u)])), _wgslsmith_f_op_f32(step(global0.c, global0.c)), ~global0.b << (20946u % 32u));
}

