struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<bool, 25>;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(5895u, 10516u, 2437u), vec3<u32>(4294967295u, 1u, 90978u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 43333u, 33856u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1455u, 0u, 4294967295u), vec3<u32>(12916u, 0u, 91568u), vec3<u32>(37469u, 1u, 1u), vec3<u32>(4294967295u, 1u, 65412u));

var<private> global3: array<Struct_3, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<i32> {
    global2 = array<vec3<u32>, 10>();
    var var_0 = u_input.b.zy;
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] * global0[_wgslsmith_index_u32(var_0.x, 28u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), -551f), Struct_2(Struct_1(-596f, ~(~u_input.b.x), select(vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 25u)]), vec2<bool>(true, true)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-37687i, 1i, 16652i), vec3<i32>(-1i, 1i, -43713i)), vec3<i32>(-2147483647i, -1i, 7925i)), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(50905u, 25u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), true))), -(~(-(-6563i << (var_0.x % 32u)))), global1[_wgslsmith_index_u32(23165u, 25u)]);
    let var_2 = !vec4<bool>(global1[_wgslsmith_index_u32(abs(var_1.b.a.b), 25u)] | var_1.b.a.e.x, true, any(!select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 25u)], var_1.d, false), vec3<bool>(var_1.b.a.e.x, true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(4692u, 25u)], global1[_wgslsmith_index_u32(var_1.b.a.b, 25u)]))), true);
    let var_3 = -2147483647i;
    return vec4<i32>(firstTrailingBit(-firstLeadingBit(min(2147483647i, -2147483647i))), ~var_1.c, _wgslsmith_add_i32(~1i, -_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.c, -2147483647i), var_1.b.a.d.yz)), -17914i);
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global1 = array<bool, 25>();
    let var_0 = -vec2<i32>(reverseBits(30196i), reverseBits(0i));
    var var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 19u)];
    global3 = array<Struct_3, 19>();
    var var_2 = ~_wgslsmith_sub_vec4_i32(func_3(), vec4<i32>(var_1.b.a.d.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), -var_0.x, -2147483647i)) >> (abs(vec4<u32>(_wgslsmith_mult_u32(var_1.b.a.b, u_input.a.x), u_input.b.x, 45740u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), u_input.a))) % vec4<u32>(32u));
    return ~_wgslsmith_mult_i32(abs(~3045i), _wgslsmith_sub_i32(var_1.c, var_0.x)) << (u_input.b.x % 32u);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(51781u, 28u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1581f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 28u)]), any(vec4<bool>(false, false, false, false)))))), false)), 19199u, vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x & u_input.b.x, 25u)]), _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(arg_0, -1i, 1i)) & ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<i32>(-31805i, arg_0, -13832i)), min(vec3<i32>(-1i) * -vec3<i32>(1952i, -1i, arg_0), ~vec3<i32>(arg_0, arg_0, -51940i))), !(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), select(vec2<bool>(false, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, false)), !global1[_wgslsmith_index_u32(1u, 25u)])));
    var var_1 = arg_0;
    global1 = array<bool, 25>();
    let var_2 = firstTrailingBit(~(-74475i));
    var_1 = func_2(!select(select(select(vec4<bool>(var_0.e.x, true, arg_1, global1[_wgslsmith_index_u32(96162u, 25u)]), vec4<bool>(var_0.c.x, var_0.c.x, global1[_wgslsmith_index_u32(83923u, 25u)], true), vec4<bool>(var_0.e.x, false, true, var_0.c.x)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_1, var_0.c.x, true), arg_1), select(!vec4<bool>(true, arg_1, arg_1, false), !vec4<bool>(var_0.c.x, false, true, true), global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), true));
    return var_0.d.yz;
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    global2 = array<vec3<u32>, 10>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0.x, select(475i, -59814i, all(vec4<bool>(true, true, true, true)))), arg_0.x, arg_0.x, func_3().x), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0.x, arg_0.x, -1i), vec4<i32>(22747i, arg_0.x, 9719i, 14582i) << (u_input.a % vec4<u32>(32u))), reverseBits(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) >> (u_input.a % vec4<u32>(32u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))), ~min(u_input.b.x, u_input.a.x), vec2<bool>(!global1[_wgslsmith_index_u32(29449u, 25u)], false), vec3<i32>(-1i) * -vec3<i32>(arg_0.x, -16120i, var_0), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(10618u, 25u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), global1[_wgslsmith_index_u32(42391u, 25u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(45944u, 25u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec2<bool>(false, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(1533u, 25u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(35849u, 25u)]))))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~(-arg_0), _wgslsmith_div_vec2_i32(-arg_0, firstTrailingBit(vec2<i32>(arg_0.x, var_0)))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -41744i, -21217i, arg_0.x), vec4<i32>(arg_0.x, 47946i, arg_0.x, arg_0.x)), ~vec4<i32>(arg_0.x, 28262i, var_0, var_0))), true);
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~1u, 28u)], 28975u, select(vec2<bool>(true, all(vec3<bool>(true, true, true))), var_1.b.a.c, false | global1[_wgslsmith_index_u32(var_1.b.a.b, 25u)]), vec3<i32>(-2147483647i, 1i, -11420i), var_1.b.a.c);
    var var_3 = Struct_3(326f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.a), var_2.b, select(var_2.c, var_1.b.a.e, var_1.b.a.e), var_2.d >> (vec3<u32>(var_1.b.a.b, var_2.b, 1u) % vec3<u32>(32u)), !select(vec2<bool>(var_1.b.a.c.x, true), vec2<bool>(var_1.b.a.c.x, false), false))), 0i << (var_1.b.a.b % 32u), true);
    return var_3.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    var var_0 = vec4<i32>(arg_0.a.d.x, ~_wgslsmith_mult_i32(~_wgslsmith_add_i32(arg_0.a.d.x, -24565i), abs(1i)), ~27913i, firstTrailingBit(arg_0.a.d.x));
    var var_1 = any(!arg_1);
    global0 = array<f32, 28>();
    global1 = array<bool, 25>();
    global0 = array<f32, 28>();
    return arg_0;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global0 = array<f32, 28>();
    let var_0 = countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.a.d.x, 47883i << (_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(4327u, 6176u, u_input.a.x)) % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.d.x, 1i, 1i), vec3<i32>(66262i, -1i, arg_0.a.d.x)), -arg_0.a.d), vec3<i32>(i32(-1i) * -42881i, ~arg_0.a.d.x, arg_0.a.d.x))));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.b, ~4294967295u), u_input.b.yx), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.a.b), vec2<u32>(104855u, arg_0.a.b))));
    let var_2 = 1202i | _wgslsmith_add_i32(-(i32(-1i) * -7498i), arg_0.a.d.x);
    let var_3 = Struct_3(arg_0.a.a, arg_0, var_2, true);
    return Struct_2(var_3.b.a);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    let var_0 = arg_1.a.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1007f))) - _wgslsmith_f_op_f32(-arg_1.a.a)), -837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-469f, global0[_wgslsmith_index_u32(~u_input.b.x, 28u)])))));
    let var_2 = arg_1;
    let var_3 = func_4(var_2.a.d.yz).a.a;
    global2 = array<vec3<u32>, 10>();
    return global3[_wgslsmith_index_u32(1u, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 25>();
    global3 = array<Struct_3, 19>();
    var var_0 = func_7(func_6(func_5(func_4(func_1(38589i, global1[_wgslsmith_index_u32(32438u, 25u)])), !select(vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(false, false)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 55461u, 1u)), vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x) >> (u_input.a.yzw % vec3<u32>(32u))))), func_5(func_6(func_6(func_6(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true), vec3<i32>(4467i, -17639i, -2147483647i), vec2<bool>(global1[_wgslsmith_index_u32(78642u, 25u)], true)))))), vec2<bool>(true, true), 36607u));
    var var_1 = vec3<i32>(abs(-((2147483647i ^ var_0.b.a.d.x) >> (_wgslsmith_div_u32(u_input.a.x, var_0.b.a.b) % 32u))), var_0.b.a.d.x, _wgslsmith_div_i32(min(_wgslsmith_mod_i32(~(-58i), var_0.b.a.d.x), ~20822i | firstTrailingBit(var_0.b.a.d.x)), 39348i));
    let var_2 = select(43168u, ~_wgslsmith_clamp_u32(var_0.b.a.b, min(~19590u, ~u_input.a.x), ~u_input.b.x << (_wgslsmith_clamp_u32(1u, 0u, var_0.b.a.b) % 32u)), global1[_wgslsmith_index_u32(19925u, 25u)]);
    var var_3 = -2445f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.b >> ((31093u >> (u_input.b.x % 32u)) % 32u), ~var_2, u_input.a.zx >> (firstLeadingBit(firstTrailingBit(vec2<u32>(4294967295u, 73014u))) % vec2<u32>(32u)));
}

