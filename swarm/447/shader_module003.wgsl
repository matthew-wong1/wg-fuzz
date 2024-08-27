struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(-307i, vec4<u32>(70148u, 1664u, 1u, 667u))), 48555u, true, false, vec3<f32>(-939f, -1083f, 995f)), Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(8755i, vec4<u32>(21487u, 16324u, 22540u, 4294967295u))), 4294967295u, false, true, vec3<f32>(1000f, -1906f, -336f)), Struct_2(vec3<bool>(false, false, true), Struct_1(-5744i, vec4<u32>(31815u, 4294967295u, 67194u, 22671u))), vec4<bool>(false, true, true, false));

var<private> global1: array<u32, 14>;

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 18> = array<u32, 18>(38495u, 0u, 17372u, 22118u, 105878u, 55678u, 0u, 4294967295u, 0u, 1u, 1u, 4294967295u, 1u, 44455u, 59828u, 57152u, 0u, 38890u);

var<private> global4: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(2147483647i, 865i), vec2<i32>(46686i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(8820i, 50202i), vec2<i32>(-11697i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(10398i, 19994i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(45425i, -5723i), vec2<i32>(-36908i, 2147483647i), vec2<i32>(11754i, i32(-2147483648)), vec2<i32>(12019i, 3701i), vec2<i32>(11011i, -68908i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = global0.a.a;
    let var_1 = vec3<i32>(1i, reverseBits(~(i32(-1i) * -48427i)), var_0.b.a) >> (var_0.b.b.ywz % vec3<u32>(32u));
    var var_2 = global0.c;
    var var_3 = !(!select(var_2.a.yy, vec2<bool>(true, true), var_2.a.x));
    global4 = array<vec2<i32>, 15>();
    return 29010i;
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, -2147483647i, -21384i), vec4<i32>(1i, -1i, -1i, -52400i)), ~vec4<i32>(-1i, 60850i, 4665i, global0.c.b.a)), ~reverseBits(arg_2.b.a)), min(_wgslsmith_div_i32(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, arg_2.b.a, u_input.d), vec3<i32>(u_input.b.x, u_input.b.x, 47639i))), ~u_input.d & u_input.b.x), -30842i);
    var_0 = vec3<i32>(var_0.x | abs(_wgslsmith_mult_i32(global0.a.a.b.a, -26737i)), 80529i, (_wgslsmith_div_i32(1i, global0.b.a.b.a) & _wgslsmith_div_i32(-2147483647i, -2147483647i)) << (arg_0.b % 32u)) >> ((max(global0.c.b.b.xww, vec3<u32>(global3[_wgslsmith_index_u32(~arg_0.b, 18u)], 40821u, _wgslsmith_div_u32(u_input.a, 39492u))) << (countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, u_input.c.x), abs(vec3<u32>(1u, 0u, 16755u)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = Struct_5(Struct_4(Struct_2(vec3<bool>(arg_1, true, arg_0.a.a.x && false), arg_0.a.b), 1u ^ firstLeadingBit(countOneBits(global3[_wgslsmith_index_u32(4294967295u, 18u)])), !arg_1, !(!global0.a.c != true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -761f, global2.x)), vec3<f32>(-584f, arg_0.e.x, global0.a.e.x)) + _wgslsmith_f_op_vec3_f32(-arg_0.e))), arg_0, Struct_2(!(!arg_2.a), arg_2.b), select(global0.d, global0.d, false));
    let var_1 = _wgslsmith_f_op_f32(global0.a.e.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.e.x))));
    let var_2 = 1000f;
    return -473f;
}

fn func_1() -> Struct_1 {
    let var_0 = !select(select(global0.a.a.a, select(vec3<bool>(global0.c.a.x, true, global0.d.x), select(vec3<bool>(false, global0.a.c, false), vec3<bool>(global0.a.d, false, global0.d.x), vec3<bool>(true, false, false)), !global0.a.a.a), all(vec2<bool>(false, false))), !select(select(global0.d.yyw, global0.b.a.a, global0.b.c), vec3<bool>(true, global0.a.c, global0.b.d), global0.b.a.a), vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_clamp_vec2_i32(-global4[_wgslsmith_index_u32(firstTrailingBit(~min(u_input.c.x, 0u)), 15u)], max(u_input.b.zx, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, global0.b.b), 15u)]), vec2<i32>(1i, -func_2(!global0.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1569f, -1222f, global0.a.e.x, -1537f)), _wgslsmith_f_op_vec2_f32(abs(global0.a.e.zz)))));
    global3 = array<u32, 18>();
    let var_2 = global0.a.a.b;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-global0.b.e.x)))), global0.a.e.x, -1680f, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(var_0, global0.b.a.b), 75888u, _wgslsmith_f_op_f32(sign(-1091f)) < _wgslsmith_f_op_f32(global0.a.e.x + 213f), !var_0.x, global0.a.e), false, Struct_2(select(select(vec3<bool>(global0.c.a.x, false, false), vec3<bool>(true, false, var_0.x), var_0), !global0.a.a.a, select(var_0, vec3<bool>(true, var_0.x, var_0.x), var_0)), global0.a.a.b))));
    return Struct_1(~(~_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(-22065i, -2147483647i)) >> (firstTrailingBit(19131u) % 32u)), _wgslsmith_sub_vec4_u32(firstLeadingBit(global0.a.a.b.b), ~(~vec4<u32>(0u, var_2.b.x, global0.b.b, global3[_wgslsmith_index_u32(33409u, 18u)]))) | _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 14u)], 10537u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b, 9017u, 0u), vec3<u32>(global0.a.b, 22731u, global3[_wgslsmith_index_u32(var_2.b.x, 18u)])), 0u), vec4<u32>(43589u, 12285u, ~global3[_wgslsmith_index_u32(41240u, 18u)], 1557u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.b;
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(round(global2.x))), 483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1001f))))), global0.a.e);
    var var_1 = Struct_4(Struct_2(global0.a.a.a, func_1()), global0.b.b, !global0.b.c, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(global0.b.e)))), _wgslsmith_f_op_vec3_f32(-global0.a.e)))));
    let var_2 = Struct_3(Struct_1(var_0.a, _wgslsmith_mult_vec4_u32(abs(firstTrailingBit(vec4<u32>(var_1.a.b.b.x, var_0.b.x, u_input.c.x, 4294967295u))), min(vec4<u32>(var_1.b, 4294967295u, global0.b.a.b.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 18u)], 18u)]) << (vec4<u32>(7630u, 1u, 21117u, u_input.a) % vec4<u32>(32u)), vec4<u32>(30279u, var_0.b.x, 62544u, global1[_wgslsmith_index_u32(var_0.b.x, 14u)])))));
    var_1 = Struct_4(Struct_2(!(!(!vec3<bool>(global0.a.c, false, global0.d.x))), var_1.a.b), firstLeadingBit(_wgslsmith_div_u32(var_2.a.b.x, select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, global1[_wgslsmith_index_u32(1u, 14u)]), 18u)], ~var_2.a.b.x, global0.c.a.x))), !(!all(!vec2<bool>(global0.c.a.x, true))), global0.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, -1292f, -790f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e) * _wgslsmith_f_op_vec3_f32(-global0.a.e))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.x), global2.x, -786f);
    var var_4 = func_1().b.x;
    var_1 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~vec2<u32>(~_wgslsmith_add_u32(105325u, 16327u), min(global3[_wgslsmith_index_u32(31480u, 18u)], u_input.a)));
}

