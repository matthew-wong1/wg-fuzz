struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(-5135i, 4294967295u, Struct_1(-1i, true), Struct_1(-17865i, true));

var<private> global3: Struct_2 = Struct_2(-2819i, 5804u, Struct_1(43914i, false), Struct_1(-35243i, true));

var<private> global4: array<vec4<u32>, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_mod_u32(0u, abs(firstTrailingBit(~34986u)));
    global1 = abs(0i) ^ (i32(-1i) * -_wgslsmith_div_i32(min(2147483647i, u_input.c), firstTrailingBit(global0.a)));
    global2 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(14574i, -1i, 2147483647i), vec3<i32>(2147483647i, 1835i >> (global2.b % 32u), 1i)), 0i), ~global3.b, Struct_1(1i, !(_wgslsmith_f_op_f32(-187f * arg_2) < _wgslsmith_f_op_f32(-arg_2))), Struct_1(_wgslsmith_mult_i32(0i ^ arg_1.a, select(-2147483647i, arg_1.a, global0.b)) & arg_1.a, !global0.b || true));
    global0 = Struct_1(~(-global3.d.a), true);
    global1 = -_wgslsmith_sub_i32(u_input.d, abs(firstLeadingBit(1i)));
    return ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.b, 10387u, global2.b), (vec3<u32>(u_input.b.x, 0u, 1u) & vec3<u32>(var_0, global2.b, 15580u)) >> (vec3<u32>(u_input.a, global2.b, var_0) % vec3<u32>(32u))), 4294967295u);
}

fn func_2() -> Struct_2 {
    global3 = Struct_2(2147483647i, _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(6493u, global2.b), ~40484u)) ^ (func_3(_wgslsmith_mult_i32(0i, u_input.e), global2.c, 2237f) << (_wgslsmith_div_u32(max(global2.b, 1u), firstLeadingBit(104214u)) % 32u)), Struct_1(~(~global2.a), global3.d.b), Struct_1(global3.c.a, global3.c.b));
    global4 = array<vec4<u32>, 17>();
    let var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-3564i, global3.a, u_input.d), vec3<i32>(-23801i, 34948i, global0.a) >> (vec3<u32>(global3.b, 60410u, global2.b) % vec3<u32>(32u))), vec3<i32>(-38986i, firstLeadingBit(-1i), abs(u_input.c))), global3.a), false);
    let var_1 = firstTrailingBit(u_input.b);
    var var_2 = (!all(vec3<bool>(true, true, true)) & global0.b) & global2.d.b;
    return Struct_2(firstTrailingBit((i32(-1i) * -15314i) << (global2.b % 32u)), u_input.b.x, Struct_1(_wgslsmith_clamp_i32(countOneBits(global0.a), _wgslsmith_div_i32(45845i, var_0.a), i32(-1i) * -2147483647i), true), Struct_1(-2147483647i, any(!vec4<bool>(var_0.b, true, true, global2.c.b))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<bool> {
    global2 = func_2();
    var var_0 = Struct_3(arg_0, vec2<bool>(!arg_3.b, arg_1.b), abs(select(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 55522u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global3.b, 1u), vec3<u32>(59464u, 21695u, 80492u))), select(vec3<u32>(u_input.b.x, arg_0.b, u_input.a), vec3<u32>(global2.b, u_input.b.x, 4294967295u) & vec3<u32>(35551u, 29705u, 75361u), true), arg_1.a == (global0.a ^ 1i))), vec4<bool>(all(select(!vec4<bool>(arg_3.b, global3.d.b, true, true), select(vec4<bool>(true, arg_1.b, false, arg_3.b), vec4<bool>(global0.b, global0.b, true, arg_1.b), arg_3.b), false)), any(vec3<bool>(true, true, true)), arg_0.d.b, arg_1.b == global3.c.b), -_wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(27024i, 27509i, arg_0.a), vec3<i32>(u_input.d, u_input.c, global3.c.a)), ~firstTrailingBit(vec3<i32>(global0.a, arg_0.c.a, global3.a))));
    let var_1 = arg_2;
    let var_2 = Struct_2(var_0.e.x, global2.b, func_2().d, func_2().c);
    let var_3 = var_0.b.x | true;
    return var_0.d.wx;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    let var_0 = func_4(func_2(), arg_1, vec2<i32>(-2147483647i, global3.d.a), global3.d);
    let var_1 = _wgslsmith_sub_vec4_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~(~u_input.b)), u_input.b), 17u)], _wgslsmith_add_vec4_u32(firstTrailingBit(~global4[_wgslsmith_index_u32(~4294967295u, 17u)]), ~global4[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_2 = _wgslsmith_clamp_vec3_i32((max(~vec3<i32>(global2.a, -14666i, arg_1.a), countOneBits(vec3<i32>(2147483647i, -18977i, 30493i))) << (~(~var_1.zwx) % vec3<u32>(32u))) & (vec3<i32>(-1i) * -vec3<i32>(u_input.d, global2.d.a, 21180i)), vec3<i32>(global2.d.a, 1i, ~global0.a), ((vec3<i32>(15224i, 2147483647i, arg_1.a) << (vec3<u32>(u_input.b.x, u_input.b.x, global2.b) % vec3<u32>(32u))) >> ((vec3<u32>(var_1.x, 0u, 55200u) & _wgslsmith_add_vec3_u32(vec3<u32>(global2.b, 4294967295u, 1739u), vec3<u32>(4294967295u, global2.b, 8447u))) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-23726i, -13266i, -1i), vec3<i32>(1i, arg_1.a, global0.a) ^ vec3<i32>(u_input.d, u_input.e, 56403i)), vec3<i32>(~26090i, 34620i, 35239i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-4377i, 0i, 0i)), -vec3<i32>(u_input.c, u_input.e, global2.d.a))));
    global2 = func_2();
    global0 = func_2().d;
    return Struct_3(Struct_2(-245i, ~u_input.b.x & _wgslsmith_clamp_u32(max(1u, 4294967295u), var_1.x, 3661u), func_2().d, global3.d), vec2<bool>(any(select(select(vec3<bool>(arg_1.b, global0.b, arg_0), vec3<bool>(global0.b, arg_0, true), vec3<bool>(false, global0.b, false)), vec3<bool>(true, false, arg_1.b), global0.b)), true), var_1.zwy, !vec4<bool>(global0.b, !global3.c.b, abs(u_input.c) == _wgslsmith_dot_vec2_i32(var_2.yx, vec2<i32>(-38750i, global0.a)), !any(var_0)), abs(~(-vec3<i32>(global3.c.a, u_input.e, 10955i))) & vec3<i32>(u_input.e, 0i, 11487i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_i32(i32(-1i) * -25695i, ~(~u_input.c));
    let var_0 = func_1(true, Struct_1(-2147483647i, global0.b));
    var var_1 = Struct_1(1i, global3.c.b);
    global2 = func_2();
    var var_2 = (var_0.e.xz & firstTrailingBit(~var_0.e.zy)) ^ ~vec2<i32>(select(-17768i, 0i, global3.b >= 23504u), -var_1.a);
    let var_3 = Struct_2(u_input.d, 53130u, Struct_1(global3.d.a, true), Struct_1(~var_2.x, true));
    var var_4 = false;
    let var_5 = Struct_2(abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(-5560i, var_2.x), firstTrailingBit(45469i))) >> (abs(_wgslsmith_dot_vec3_u32(~var_0.c, firstTrailingBit(var_0.c))) % 32u), func_1(global3.c.b, global3.c).c.x, func_1(true, func_1(func_4(Struct_2(global0.a, var_0.a.b, var_3.d, global2.c), func_2().c, _wgslsmith_mult_vec2_i32(vec2<i32>(47013i, var_3.a), vec2<i32>(global2.a, global3.c.a)), global3.d).x, func_2().d).a.d).a.c, func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + -200f), _wgslsmith_f_op_f32(f32(-1f) * -2749f)))), vec3<i32>(~(~_wgslsmith_mult_i32(global2.c.a, global2.d.a)), u_input.d, _wgslsmith_mult_i32(firstLeadingBit(27646i), var_3.a)), select(vec3<i32>(49714i, -_wgslsmith_add_i32(var_5.c.a, 10162i), max(_wgslsmith_sub_i32(var_2.x, 0i), var_2.x)), _wgslsmith_mult_vec3_i32(var_0.e, vec3<i32>(~1i, 1i, ~(-25078i))), all(var_0.d)));
}

