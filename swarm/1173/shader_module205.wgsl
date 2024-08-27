struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 1u, 4294967295u, 10837u), vec4<u32>(1u, 0u, 0u, 23151u), vec4<u32>(51091u, 11727u, 4294967295u, 2494u), vec4<u32>(31746u, 42669u, 94038u, 53171u), vec4<u32>(8199u, 0u, 1u, 0u), vec4<u32>(1u, 4294967295u, 23771u, 10251u), vec4<u32>(0u, 19721u, 29687u, 4294967295u), vec4<u32>(67299u, 4294967295u, 7935u, 1u), vec4<u32>(17361u, 25546u, 64104u, 33416u), vec4<u32>(53834u, 84472u, 32493u, 0u));

var<private> global1: u32 = 24641u;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec2<i32> {
    let var_0 = u_input.a;
    global0 = array<vec4<u32>, 10>();
    global2 = arg_1;
    let var_1 = arg_1;
    global0 = array<vec4<u32>, 10>();
    return ~vec2<i32>(global2.b.x, -1i);
}

fn func_2(arg_0: i32) -> bool {
    global2 = Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, _wgslsmith_mod_u32(4294967295u, global2.c), 4294967295u), ~max(~vec3<u32>(u_input.c.x, 80890u, global2.a.x), u_input.b.xyw)), select(func_3(~global0[_wgslsmith_index_u32(0u, 10u)], Struct_1(u_input.b.yyw, vec2<i32>(66102i, global2.d.x), global2.a.x, vec3<i32>(-35300i, u_input.a, arg_0), global2.b), i32(-1i) * -587i), countOneBits(~vec2<i32>(u_input.a, 57703i)), true) << (vec2<u32>(global2.a.x, global2.a.x) % vec2<u32>(32u)), ~global2.a.x, global2.d, -(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 7964i), global2.d.zz), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_0), global2.e))));
    global0 = array<vec4<u32>, 10>();
    var var_0 = vec4<u32>(u_input.b.x, global2.c, _wgslsmith_dot_vec4_u32(u_input.b, max(~u_input.b >> ((u_input.b ^ u_input.b) % vec4<u32>(32u)), countOneBits(select(u_input.b, vec4<u32>(u_input.c.x, u_input.c.x, global2.a.x, 23398u), false)))), 61303u);
    var var_1 = Struct_2(abs(firstLeadingBit(-2147483647i)), 26553u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(min(-1436f, _wgslsmith_f_op_f32(1000f - 870f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(-1000f - 2003f)), -766f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, -1000f, 1576f, 527f)))));
    return all(vec3<bool>(true, true, true));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_1 {
    global0 = array<vec4<u32>, 10>();
    global2 = Struct_1(vec3<u32>(countOneBits(~_wgslsmith_add_u32(4016u, 7672u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), global2.a.yz), u_input.b.x), min(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(10967i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -1i, -49418i)), _wgslsmith_div_i32(-2147483647i, global2.e.x)), -(~(-global2.d.yz))), u_input.c.x >> (_wgslsmith_dot_vec3_u32(u_input.c, ~(~global2.a)) % 32u), vec3<i32>(66571i, -32713i, -15947i) << ((u_input.c | vec3<u32>(~global2.a.x, 1u, u_input.c.x & 61822u)) % vec3<u32>(32u)), -(~global2.b));
    var var_0 = Struct_1(~(vec3<u32>(~global2.a.x, 1u, global2.c) << (u_input.c % vec3<u32>(32u))), -vec2<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(16156i, u_input.a), global2.e), global2.e.x & global2.e.x), ~firstTrailingBit(-1i)), global2.c, vec3<i32>(i32(-1i) * -40838i, firstLeadingBit(~1i), ~(~abs(0i))), global2.d.xy);
    var var_1 = true;
    global1 = ~u_input.c.x;
    return Struct_1(u_input.b.wxw, global2.b | select(vec2<i32>(u_input.a, -var_0.b.x), ~vec2<i32>(-2147483647i, 7454i), !select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), true)), abs(_wgslsmith_sub_u32(reverseBits(~var_0.a.x), 1u)), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-23871i), global2.d.x, -2147483647i), vec3<i32>(global2.b.x, var_0.b.x, abs(_wgslsmith_add_i32(var_0.b.x, u_input.a)))), vec2<i32>(reverseBits(35092i), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a & 1i, 0i), abs(global2.e.x))));
}

fn func_1() -> Struct_4 {
    let var_0 = 602f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(977f, 978f))) * 1277f));
    let var_1 = _wgslsmith_add_i32(~0i, max(firstLeadingBit(global2.e.x), -23419i) >> (0u % 32u));
    let var_2 = ~select(~vec2<i32>(_wgslsmith_mult_i32(0i, -9427i), u_input.a), max(vec2<i32>(-1i, 12028i), global2.b), !vec2<bool>(true, var_0));
    global2 = func_4(all(!(!vec2<bool>(var_0, true))), func_2(_wgslsmith_mod_i32(i32(-1i) * -var_1, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a, -31523i, u_input.a)), global2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-192f, 946f), -127f)) * -505f) + _wgslsmith_f_op_f32(trunc(1000f))));
    var var_3 = countOneBits(vec2<i32>(~1i << (0u % 32u), firstTrailingBit(-74228i)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2842f))))), true, Struct_3(vec4<u32>(45831u, global2.a.x, 1u, ~(38273u << (0u % 32u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(1086f)), -884f, _wgslsmith_f_op_f32(sign(-405f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-136f, -440f, -606f, 1766f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 372f, 423f, -414f), vec4<f32>(-1949f, -1516f, -1000f, -585f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1657f + -587f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-183f + -1100f))))), Struct_3(~vec4<u32>(~global2.a.x, 1u, 4294967295u, _wgslsmith_sub_u32(u_input.b.x, global2.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, 1f, -313f, _wgslsmith_f_op_f32(879f + 2145f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-295f, 1745f, -2166f, 972f))) - vec4<f32>(-1189f, 942f, 455f, -894f))), 2344f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 10>();
    var var_0 = func_1();
    var var_1 = !select(vec3<bool>(select(true, var_0.c.c >= -1336f, var_0.b | true), any(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, var_0.b, false), var_0.b)), all(vec4<bool>(var_0.b, true, var_0.b, var_0.b))), select(!select(vec3<bool>(var_0.b, false, false), vec3<bool>(false, true, var_0.b), vec3<bool>(true, var_0.b, true)), select(select(vec3<bool>(var_0.b, false, false), vec3<bool>(false, var_0.b, var_0.b), var_0.b), select(vec3<bool>(true, false, true), vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, true, var_0.b)), !vec3<bool>(var_0.b, true, false)), !select(vec3<bool>(true, false, var_0.b), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, true))), var_0.b);
    global2 = func_4(true, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.b.x, _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a)), all(var_1.xz))), var_0.c.b.x));
    var var_2 = vec2<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.b.x)))) + _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(var_0.d.b.x + _wgslsmith_f_op_f32(-567f + 114f)), false))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), _wgslsmith_f_op_f32(var_0.d.b.x + _wgslsmith_f_op_f32(abs(580f)))) * vec3<f32>(2840f, -1781f, _wgslsmith_f_op_f32(round(var_2.x)))), max(max(1u, 44089u), 0u) ^ firstTrailingBit(min(abs(29680u), global2.a.x)));
}

