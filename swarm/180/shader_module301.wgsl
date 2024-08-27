struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_2(Struct_1(0u, vec2<i32>(32792i, -1i), 208f, vec3<bool>(false, false, true), vec3<u32>(43972u, 1u, 1724u)))), Struct_3(Struct_2(Struct_1(0u, vec2<i32>(-21238i, 18840i), 882f, vec3<bool>(false, false, false), vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), Struct_3(Struct_2(Struct_1(81424u, vec2<i32>(0i, -12427i), 1325f, vec3<bool>(true, true, false), vec3<u32>(0u, 17945u, 1u)))), Struct_3(Struct_2(Struct_1(20940u, vec2<i32>(i32(-2147483648), 92360i), 1309f, vec3<bool>(false, true, true), vec3<u32>(3051u, 45101u, 1u)))), Struct_3(Struct_2(Struct_1(4294967295u, vec2<i32>(i32(-2147483648), i32(-2147483648)), 334f, vec3<bool>(false, false, false), vec3<u32>(1u, 4294967295u, 3797u)))), Struct_3(Struct_2(Struct_1(1u, vec2<i32>(59738i, -1167i), 158f, vec3<bool>(true, false, false), vec3<u32>(1885u, 5379u, 4294967295u)))), Struct_3(Struct_2(Struct_1(0u, vec2<i32>(9903i, 2758i), 605f, vec3<bool>(true, false, true), vec3<u32>(87498u, 10048u, 1u)))), Struct_3(Struct_2(Struct_1(20577u, vec2<i32>(-10853i, 0i), 2101f, vec3<bool>(true, true, true), vec3<u32>(1u, 0u, 7446u)))), Struct_3(Struct_2(Struct_1(45689u, vec2<i32>(8207i, -1i), 700f, vec3<bool>(true, true, false), vec3<u32>(74430u, 54117u, 5466u)))), Struct_3(Struct_2(Struct_1(20638u, vec2<i32>(2147483647i, -6288i), -1670f, vec3<bool>(false, false, false), vec3<u32>(9919u, 23109u, 34091u)))), Struct_3(Struct_2(Struct_1(0u, vec2<i32>(2147483647i, 1i), 454f, vec3<bool>(true, true, true), vec3<u32>(23651u, 0u, 4294967295u)))), Struct_3(Struct_2(Struct_1(0u, vec2<i32>(2147483647i, i32(-2147483648)), 1775f, vec3<bool>(false, true, true), vec3<u32>(23626u, 1u, 0u)))), Struct_3(Struct_2(Struct_1(0u, vec2<i32>(-11535i, -1i), 173f, vec3<bool>(false, false, false), vec3<u32>(4294967295u, 0u, 4294967295u)))), Struct_3(Struct_2(Struct_1(1u, vec2<i32>(3431i, 0i), 156f, vec3<bool>(true, true, true), vec3<u32>(82562u, 0u, 0u)))), Struct_3(Struct_2(Struct_1(1u, vec2<i32>(0i, -33600i), 623f, vec3<bool>(false, true, false), vec3<u32>(4294967295u, 81790u, 1u)))), Struct_3(Struct_2(Struct_1(104166u, vec2<i32>(1i, -1i), 1377f, vec3<bool>(true, false, false), vec3<u32>(42360u, 86970u, 0u)))), Struct_3(Struct_2(Struct_1(46288u, vec2<i32>(-38672i, 46467i), -1232f, vec3<bool>(true, true, true), vec3<u32>(4294967295u, 0u, 4294967295u)))), Struct_3(Struct_2(Struct_1(4294967295u, vec2<i32>(11210i, 24603i), 963f, vec3<bool>(true, true, false), vec3<u32>(97334u, 4294967295u, 0u)))));

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: u32 = 52256u;

var<private> global3: array<vec4<i32>, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, -1548f, _wgslsmith_f_op_f32(-181f - -855f))))));
    var var_1 = Struct_1(u_input.b.x, u_input.a.yz, var_0.x, select(!vec3<bool>(any(vec2<bool>(true, true)), true, true), !global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_div_vec3_u32(abs(vec3<u32>(106561u, 40500u, u_input.b.x)) >> (~vec3<u32>(u_input.b.x, 41120u, u_input.b.x) % vec3<u32>(32u)), (vec3<u32>(u_input.b.x, u_input.b.x, 11938u) >> (vec3<u32>(u_input.b.x, 0u, 0u) % vec3<u32>(32u))) >> (vec3<u32>(57441u, 4294967295u, 1u) % vec3<u32>(32u))) ^ (reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 10384u, u_input.b.x), vec3<u32>(40525u, 50979u, u_input.b.x))) >> (max(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, 39643u, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))));
    let var_2 = Struct_2(Struct_1(~(u_input.b.x >> (u_input.b.x % 32u)), vec2<i32>(_wgslsmith_add_i32(1i, -2147483647i), var_1.b.x | 0i) >> (~(~vec2<u32>(u_input.b.x, 4294967295u)) % vec2<u32>(32u)), var_1.c, vec3<bool>(true, false, true), var_1.e));
    let var_3 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2585f, _wgslsmith_f_op_f32(trunc(var_1.c))))))));
    let var_4 = !(!(!(!(!var_2.a.d.x))));
    return var_1.c;
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(min(53656u, 1u), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zy & u_input.a.yx, u_input.a.zy), ~(-vec2<i32>(0i, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) + _wgslsmith_f_op_f32(func_3(1i, abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & u_input.a)))), select(vec3<bool>(all(select(global1[_wgslsmith_index_u32(arg_0, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], false)), any(vec4<bool>(true, false, false, false)), true), vec3<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), false, true), select(select(global1[_wgslsmith_index_u32(~11564u, 26u)], vec3<bool>(true, true, true), true), !(!global1[_wgslsmith_index_u32(55655u, 26u)]), all(vec3<bool>(false, false, false)) & true)), vec3<u32>(arg_0, 60744u, 48136u));
}

fn func_1() -> vec2<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.b.x), 26u)];
    global3 = array<vec4<i32>, 31>();
    global0 = array<Struct_3, 18>();
    let var_1 = func_2(18375u);
    var var_2 = ~var_1.a;
    return firstTrailingBit(firstLeadingBit(max(vec2<i32>(u_input.a.x, 40544i), var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(4294967295u, ~func_1(), 2270f, !vec3<bool>(any(vec2<bool>(true, true)), false, select(true, true, any(global1[_wgslsmith_index_u32(u_input.b.x, 26u)]))), vec3<u32>(countOneBits(~reverseBits(u_input.b.x)), u_input.b.x, u_input.b.x));
    let var_1 = -vec3<i32>(abs(_wgslsmith_clamp_i32(6752i, var_0.b.x, u_input.a.x)) >> (51307u % 32u), var_0.b.x, _wgslsmith_div_i32(abs(-u_input.a.x), 1i));
    var var_2 = Struct_3(Struct_2(Struct_1(u_input.b.x, _wgslsmith_mult_vec2_i32(-var_1.yz, func_2(u_input.b.x).b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c + var_0.c))), vec3<bool>(true, var_0.c == 825f, u_input.b.x > var_0.e.x), max(abs(var_0.e), var_0.e))));
    let var_3 = ~(-1938i);
    let var_4 = firstTrailingBit(firstLeadingBit(firstLeadingBit(~vec4<u32>(8421u, var_2.a.a.e.x, u_input.b.x, 23331u) ^ vec4<u32>(0u, 16072u, 1u, var_2.a.a.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.b.x);
}

