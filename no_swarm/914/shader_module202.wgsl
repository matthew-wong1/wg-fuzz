struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool = true;

var<private> global2: Struct_4 = Struct_4(-17739i);

var<private> global3: f32 = -570f;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 101394u, 1u, 0u), vec4<u32>(75785u, 4294967295u, 61303u, 1u)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(29508u, 1u, 1u, 62505u)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 1u, 25995u), vec4<u32>(36925u, 4294967295u, 0u, 39680u)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 8093u, 27658u, 35826u), vec4<u32>(1u, 1u, 10953u, 99150u)), Struct_1(vec2<bool>(false, false), vec4<u32>(22074u, 77089u, 36417u, 1u), vec4<u32>(1u, 0u, 4294967295u, 44324u)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(4064u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<u32>(5280u, 1u, 38750u, 0u), vec4<u32>(1u, 1u, 0u, 29584u)), Struct_1(vec2<bool>(true, true), vec4<u32>(44936u, 59178u, 0u, 54084u), vec4<u32>(4294967295u, 59630u, 24019u, 1442u)), Struct_1(vec2<bool>(true, true), vec4<u32>(113898u, 20501u, 4294967295u, 38940u), vec4<u32>(53565u, 0u, 1u, 53251u)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(4294967295u, 46461u, 0u, 0u)), Struct_1(vec2<bool>(true, true), vec4<u32>(55760u, 5109u, 1u, 14323u), vec4<u32>(1u, 7456u, 790u, 0u)), Struct_1(vec2<bool>(true, false), vec4<u32>(27451u, 11458u, 48011u, 4294967295u), vec4<u32>(4833u, 4294967295u, 51343u, 5093u)), Struct_1(vec2<bool>(false, true), vec4<u32>(56163u, 18222u, 57342u, 4294967295u), vec4<u32>(25894u, 0u, 0u, 18683u)), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 1u, 2172u), vec4<u32>(4294967295u, 0u, 1u, 1u)), Struct_1(vec2<bool>(true, false), vec4<u32>(44790u, 1u, 0u, 14386u), vec4<u32>(93577u, 28646u, 15268u, 94734u)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(53318u, 1u, 6070u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<u32>(24058u, 0u, 0u, 0u), vec4<u32>(31122u, 46137u, 15532u, 21679u)), Struct_1(vec2<bool>(true, false), vec4<u32>(21240u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 20844u, 4294967295u, 61875u)), Struct_1(vec2<bool>(false, true), vec4<u32>(76889u, 8948u, 4294967295u, 4294967295u), vec4<u32>(0u, 55938u, 13848u, 7042u)), Struct_1(vec2<bool>(false, false), vec4<u32>(74619u, 27923u, 37083u, 1u), vec4<u32>(1u, 4294967295u, 50706u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 0u, 27258u, 60368u), vec4<u32>(0u, 8227u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 8990u, 2089u, 0u), vec4<u32>(5150u, 37276u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<u32>(23914u, 70756u, 4294967295u, 61275u), vec4<u32>(4294967295u, 54267u, 1u, 0u)), Struct_1(vec2<bool>(true, false), vec4<u32>(122201u, 1u, 27240u, 0u), vec4<u32>(92621u, 27608u, 0u, 44442u)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = true;
    var var_0 = _wgslsmith_sub_i32(2147483647i, countOneBits(1i));
    global2 = Struct_4(u_input.c.x);
    var_0 = -(~(-2147483647i));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, global0.a)))), ~_wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_add_i32(-87682i, global0.d.a)) << (reverseBits(3080u) % 32u), Struct_2(-51959i, Struct_1(global0.e.a, firstLeadingBit(global0.c.b.b) & vec4<u32>(global0.c.b.b.x, 4294967295u, global0.c.b.b.x, global0.c.b.c.x), reverseBits(vec4<u32>(4294967295u, 4294967295u, 1u, global0.c.b.c.x) << (vec4<u32>(16953u, 4294967295u, 35448u, 1u) % vec4<u32>(32u))))), Struct_4(abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, global0.b, -30224i), _wgslsmith_clamp_i32(global2.a, u_input.c.x, -18682i)))), Struct_1(!(!vec2<bool>(true, global0.c.b.a.x)), vec4<u32>(u_input.a, firstLeadingBit(global0.c.b.c.x) ^ 73571u, _wgslsmith_dot_vec4_u32(global0.c.b.b, global0.c.b.b) >> (countOneBits(53830u) % 32u), ~global0.e.b.x >> (firstLeadingBit(1u) % 32u)), global0.e.c & ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 8317u, 1u), global0.e.c)));
    return global0.a.x;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    var var_0 = any(vec3<bool>(1035f == global0.a.x, false, !global0.e.a.x));
    var_0 = false;
    var var_1 = 2092f;
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)) + _wgslsmith_f_op_f32(580f + global0.a.x))))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(-21955i, 21911i, -1i, arg_1.a) << (~global0.c.b.b % vec4<u32>(32u))), arg_1.a), Struct_2(~(-2147483647i), Struct_1(vec2<bool>(true, true), firstTrailingBit(~global0.c.b.c), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(29164u, 4294967295u, global0.c.b.b.x, global0.c.b.c.x)), global0.c.b.c))), arg_1, Struct_1(select(select(!global0.c.b.a, !vec2<bool>(false, arg_3), vec2<bool>(true, arg_3)), vec2<bool>(global0.c.b.a.x, true), vec2<bool>(arg_3, any(vec4<bool>(false, false, true, global0.c.b.a.x)))), ~global0.e.c, vec4<u32>(1u, _wgslsmith_mult_u32(u_input.d, _wgslsmith_clamp_u32(37942u, 36773u, 20708u)), _wgslsmith_sub_u32(42961u, u_input.b), u_input.b)));
    let var_2 = u_input.c;
    return global0.d;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    global2 = func_2(~global2.a, Struct_4(global0.c.a), u_input.c, global0.e.a.x);
    let var_0 = Struct_3(true, 0i, -49510i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(750f, 321f)) + 129f)), global0.a.x, _wgslsmith_f_op_f32(global0.a.x - -1000f), _wgslsmith_f_op_f32(-global0.a.x)), Struct_2(1i, arg_2.b));
    var var_1 = func_2(_wgslsmith_add_i32(firstLeadingBit(arg_1.a), arg_0.a), Struct_4(1i), select(_wgslsmith_div_vec4_i32(u_input.c, ~vec4<i32>(arg_2.a, 0i, -2132i, 0i)), -u_input.c, vec4<bool>(arg_1.b.a.x, true, arg_1.b.a.x, true)), !arg_1.b.a.x);
    let var_2 = 1i;
    global1 = all(select(var_0.e.b.a, !var_0.e.b.a, arg_1.b.a));
    return Struct_3(true, global2.a, var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -422f, -727f, global0.a.x) + var_0.d))))) + _wgslsmith_f_op_vec4_f32(-var_0.d)), Struct_2(i32(-1i) * -2147483647i, Struct_1(vec2<bool>(global0.e.a.x, !arg_2.b.a.x), countOneBits(vec4<u32>(u_input.a, var_0.e.b.b.x, 25337u, arg_3)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 55486u, 4294967295u, 4294967295u), _wgslsmith_div_vec4_u32(arg_2.b.b, arg_2.b.b)))));
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(global0.b, _wgslsmith_div_i32(reverseBits(24580i), _wgslsmith_add_i32(u_input.c.x, arg_0.e.a))) | ~select(2147483647i, -19322i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, firstTrailingBit(min(2147483647i, -2147483647i)), global0.d.a), vec3<i32>(firstTrailingBit(0i) & ~arg_0.e.a, -32206i, -func_2(-25261i, global0.d, vec4<i32>(arg_0.e.a, global2.a, global0.c.a, u_input.c.x), arg_0.a).a)));
    let var_1 = vec4<i32>(1i, _wgslsmith_div_i32(abs(2147483647i), _wgslsmith_add_i32(~(~u_input.c.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, 0i, -1i), u_input.c.wxz), func_1(Struct_4(u_input.c.x), Struct_2(global0.b, Struct_1(arg_0.e.b.a, vec4<u32>(global0.e.b.x, arg_0.e.b.c.x, 4294967295u, arg_0.e.b.c.x), arg_0.e.b.b)), Struct_2(arg_0.b, global0.e), 8930u).c))), var_0.x, global2.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-707f + global0.a.x)));
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), var_2, _wgslsmith_f_op_f32(select(-668f, -1928f, false)), arg_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))))), firstLeadingBit(_wgslsmith_dot_vec2_i32(max(vec2<i32>(var_0.x, 33559i), vec2<i32>(0i, 26891i)), var_0 ^ var_0)) | -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, 1i), u_input.c.wy), func_1(func_2(var_1.x, global0.d, abs(max(vec4<i32>(0i, u_input.c.x, arg_0.b, var_0.x), vec4<i32>(32035i, 26880i, 16481i, global2.a))), true), func_1(func_2(_wgslsmith_mod_i32(var_1.x, -1i), global0.d, _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(global2.a, var_0.x, u_input.c.x, 32844i)), global0.c.b.a.x), arg_0.e, Struct_2(-global0.d.a, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(102585u, 0u, 9296u), 24u)]), ~0u).e, func_1(global0.d, global0.c, Struct_2(global2.a, global0.c.b), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 35702u), global0.c.b.c.xz), func_1(global0.d, arg_0.e, arg_0.e, global0.c.b.c.x).e.b.b.zy)).e, global0.e.b.x).e, global0.d, func_1(global0.d, Struct_2(-select(0i, global0.c.a, true), func_1(Struct_4(var_1.x), func_1(Struct_4(var_1.x), arg_0.e, Struct_2(-2147483647i, Struct_1(arg_0.e.b.a, arg_0.e.b.b, arg_0.e.b.b)), arg_0.e.b.b.x).e, Struct_2(30051i, global0.e), _wgslsmith_sub_u32(4294967295u, 105853u)).e.b), Struct_2(~_wgslsmith_mod_i32(var_1.x, 32256i), func_1(global0.d, Struct_2(u_input.c.x, Struct_1(global0.c.b.a, vec4<u32>(arg_0.e.b.b.x, 4294967295u, u_input.d, 1u), arg_0.e.b.c)), func_1(global0.d, Struct_2(7987i, arg_0.e.b), global0.c, 21680u).e, arg_0.e.b.c.x).e.b), u_input.a).e.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1938f, -920f)) * arg_0.d.ww))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.xx)), !vec2<bool>(!func_1(Struct_4(34321i), Struct_2(-1122i, global0.c.b), Struct_2(global0.d.a, Struct_1(vec2<bool>(false, global0.c.b.a.x), vec4<u32>(u_input.b, 6866u, global0.c.b.b.x, arg_0.e.b.c.x), arg_0.e.b.c)), global0.e.c.x).e.b.a.x, !all(vec3<bool>(false, arg_0.e.b.a.x, false)))));
    return global0.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21841i;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(step(-415f, global0.a.x))), global0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a.zz, global0.a.xx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(global0.d, Struct_2(global0.c.a, Struct_1(vec2<bool>(global0.e.a.x, global0.c.b.a.x), vec4<u32>(global0.e.b.x, global0.e.b.x, 0u, u_input.b), global0.c.b.c)), Struct_2(-2893i, global0.c.b), global0.e.c.x))) - global0.a.yx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(global0.d, global0.c, global0.c, 55350u).d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(f32(-1f) * -152f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f)), var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x), global0.a.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-(u_input.c.yzy & u_input.c.wzy), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global0.d.a, -52894i, u_input.c.x), vec3<i32>(global2.a, global2.a, global0.b)))), vec3<i32>(-u_input.c.x & 0i, _wgslsmith_dot_vec4_i32(u_input.c, ~vec4<i32>(global0.b, u_input.c.x, 0i, -1127i)), global2.a)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, 276f, global0.c.b.a.x))) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(global0.a.x * global0.a.x))))), countOneBits(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(18433u, 4294967295u, 1u), _wgslsmith_mult_vec3_u32(global0.c.b.b.xwx, global0.c.b.b.wzz), !vec3<bool>(global0.c.b.a.x, global0.e.a.x, global0.c.b.a.x)), vec3<u32>(~4294967295u, global0.e.c.x, 36423u), ~global0.e.b.wwy)));
}

