struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec2<i32>(0i, -16397i)), vec3<bool>(true, false, true), vec3<i32>(2147483647i, 2147483647i, 1i));

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_3, 23>;

var<private> global4: array<i32, 27>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !vec3<bool>(true, all(select(select(vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(false, false, true, false), true), select(vec4<bool>(global1.b.x, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, global1.b.x, true, false)), !vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true))), true);
    let var_1 = !global1.b.x;
    var var_2 = Struct_4(global1.a, !select(!global1.b, select(vec3<bool>(true, var_1, false), global1.b, any(global1.b)), global1.b), global1.c >> (_wgslsmith_mult_vec3_u32(~min(vec3<u32>(u_input.a, u_input.a, 36008u), vec3<u32>(u_input.a, 13978u, 53157u)), _wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(15698u, 38592u, u_input.a)), countOneBits(vec3<u32>(4294967295u, u_input.a, 1u)))) % vec3<u32>(32u)));
    let var_3 = var_2.b;
    return var_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global1 = Struct_4(global1.a, select(arg_1, !arg_1, func_3()), arg_0);
    global3 = array<Struct_3, 23>();
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_div_f32(234f, _wgslsmith_f_op_f32(step(global2.x, 596f)))));
    global1 = Struct_4(Struct_1(arg_0.yz), !global1.b, vec3<i32>(2147483647i, countOneBits(global4[_wgslsmith_index_u32(countOneBits(~u_input.a), 27u)]), firstTrailingBit(global1.c.x)));
    global3 = array<Struct_3, 23>();
    return Struct_1(vec2<i32>(~0i, firstTrailingBit(1220i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_5) -> Struct_3 {
    var var_0 = arg_2;
    global4 = array<i32, 27>();
    global1 = arg_2;
    let var_1 = vec3<u32>(u_input.a, ~_wgslsmith_div_u32(~firstLeadingBit(u_input.a), u_input.a), 28229u);
    return Struct_3(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(44260u, 4294967295u, 45350u, 1u), vec4<u32>(u_input.a, 1u, 85704u, u_input.a)), max(~vec4<u32>(u_input.a, u_input.a, 92734u, 94960u), abs(vec4<u32>(var_1.x, 45531u, var_1.x, u_input.a)))) ^ firstLeadingBit(~vec4<u32>(u_input.a, 4294967295u, 40869u, var_1.x)), _wgslsmith_sub_vec3_i32(min(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.a.x, var_0.c.x, global4[_wgslsmith_index_u32(u_input.a, 27u)]), var_0.c), vec3<i32>(-1i, arg_0.a.x & -17639i, firstTrailingBit(35993i))), ~var_0.c), Struct_2(func_2(_wgslsmith_div_vec3_i32(arg_2.c, global1.c) & vec3<i32>(-1i, 19357i, global4[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(arg_1.x, global1.a.a.x != arg_3.b.x, arg_1.x))), global2.x, Struct_2(Struct_1(firstLeadingBit(func_2(var_0.c, arg_3.a.xzy).a))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = !(!(_wgslsmith_sub_u32(u_input.a | 1u, abs(u_input.a)) <= min(16578u, ~u_input.a)));
    global4 = array<i32, 27>();
    let var_1 = func_4(Struct_1(~(vec2<i32>(1i, -2147483647i) & arg_0.a) & global1.a.a), global1.b.yy, Struct_4(func_2(global1.c, global1.b), !select(global1.b, !vec3<bool>(global1.b.x, true, true), !global1.b), -(~global1.c)), global0[_wgslsmith_index_u32(0u, 5u)]);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(927f, _wgslsmith_f_op_f32(var_1.d - 562f), false)) - global2.x))));
    var var_3 = 0i;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(Struct_1(global1.c.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -660f)) + vec2<f32>(748f, global2.x))), !(!global1.b.x && true), (-7719i << (_wgslsmith_mult_u32(1u, u_input.a) % 32u)) | ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 56463u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 27u)]), vec3<bool>(global1.b.x, !func_3() || ((global1.b.x | global1.b.x) & global1.b.x), global1.b.x), ~countOneBits(min(_wgslsmith_sub_vec3_i32(global1.c, vec3<i32>(global4[_wgslsmith_index_u32(u_input.a, 27u)], global1.a.a.x, -13336i)), vec3<i32>(2546i, global1.a.a.x, -2147483647i))));
    var_0 = Struct_4(Struct_1(-(abs(vec2<i32>(-2147483647i, 10232i)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), var_0.b, global1.c);
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, 876f));
    var var_1 = ~(~vec2<u32>(83853u, 1u));
    var_1 = ~vec2<u32>(62439u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 4294967295u) | vec2<u32>(100592u, 56583u), ~vec2<u32>(u_input.a, u_input.a)));
    let var_2 = Struct_5(select(select(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), vec4<bool>(true, !global1.b.x, all(vec4<bool>(true, global1.b.x, false, var_0.b.x)), select(true, false, global1.b.x)), select(vec4<bool>(var_0.b.x, global1.b.x, global1.b.x, false), !vec4<bool>(var_0.b.x, var_0.b.x, true, true), true)), select(select(select(vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, false, global1.b.x, true), vec4<bool>(global1.b.x, true, global1.b.x, false)), vec4<bool>(global1.b.x, false, global1.b.x, false), select(vec4<bool>(var_0.b.x, false, var_0.b.x, false), vec4<bool>(true, global1.b.x, var_0.b.x, false), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), vec4<bool>(false, true, any(vec3<bool>(global1.b.x, false, false)), !global1.b.x), true), !vec4<bool>(false, global1.a.a.x >= 0i, all(var_0.b.yz), all(vec4<bool>(global1.b.x, false, false, true)))), reverseBits(global1.a.a), global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(firstTrailingBit(var_1.x), 0u), u_input.a, i32(-1i) * -4528i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, 781f, global2.x, 1455f))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -650f))), _wgslsmith_f_op_f32(max(908f, _wgslsmith_f_op_f32(global2.x + global2.x))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-736f * global2.x), !var_2.a.x)), global2.x)), 31176u);
}

