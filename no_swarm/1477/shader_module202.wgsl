struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(32002u, 50531u, 1u));

var<private> global2: Struct_2 = Struct_2(0u, vec4<bool>(false, false, false, true), Struct_1(-9348i, 1u, 21946u));

var<private> global3: array<i32, 8>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(~(~global2.c.b)), 8u)];
    let var_1 = select(global2.b.yy, vec2<bool>(true, true), global2.b.x);
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c.a, global0.a, global3[_wgslsmith_index_u32(global2.a, 8u)]), vec3<i32>(0i, global3[_wgslsmith_index_u32(global2.c.b, 8u)], -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(global2.c.c, 8u)], global0.a, 0i))), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, -1i, 2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(15529u, 8u)], 11253i, global2.c.a)))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(global3[_wgslsmith_index_u32(global0.c, 8u)], global0.a, -6077i), vec3<i32>(0i, 36807i, global2.c.a))), global2.c.c, 31262u);
    global1 = array<vec3<u32>, 1>();
    let var_2 = 0u > ~(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.a, 10470u), global0.b));
    return !var_2 || var_2;
}

fn func_2() -> vec2<i32> {
    let var_0 = global2.c;
    var var_1 = u_input.a.wwx;
    let var_2 = global2.c.a;
    var var_3 = select(vec2<bool>(false, !(0i == var_0.a) & func_3()), select(vec2<bool>(!all(vec4<bool>(global4.x, global4.x, false, false)), any(!vec3<bool>(global2.b.x, global4.x, true))), global2.b.zw, true), vec2<bool>(true, global2.b.x));
    global3 = array<i32, 8>();
    return ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(5052i, global0.a), -(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -2147483647i)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    let var_0 = arg_0;
    var var_1 = global2.c;
    var var_2 = ~(select(func_2() | _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a, 75792i), vec2<i32>(global0.a, global0.a)), vec2<i32>(59243i, global0.a) ^ func_2(), arg_1.x) << (~_wgslsmith_div_vec2_u32(~u_input.a.zx, firstLeadingBit(vec2<u32>(global0.c, 1u))) % vec2<u32>(32u)));
    var var_3 = Struct_1(global0.a, _wgslsmith_dot_vec3_u32(u_input.a.wxw, abs(vec3<u32>(reverseBits(18999u), abs(0u), global2.a))), u_input.a.x);
    let var_4 = Struct_2(global0.c, global2.b, Struct_1(2147483647i, select(abs(var_1.b & global0.b), 12504u, arg_1.x), _wgslsmith_div_u32(var_1.b, firstTrailingBit(1u)) << (~global0.b % 32u)));
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = Struct_2(func_1(-1000f, !vec2<bool>(!global4.x, all(vec3<bool>(global4.x, true, global2.b.x)))), !(!global2.b), global2.c);
    var var_0 = global4.x;
    global2 = Struct_2(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f - 201f) + _wgslsmith_f_op_f32(-1705f + 899f)), 233f)), !vec2<bool>(global2.b.x, select(global4.x, global4.x, global2.b.x))), global2.b, global2.c);
    global2 = Struct_2(u_input.b, select(global2.b, global2.b, global0.a != -(i32(-1i) * -1i)), Struct_1(_wgslsmith_sub_i32(9750i, 39552i), u_input.b, ~22703u));
    global4 = select(select(vec2<bool>(true, !all(global2.b)), global2.b.zz, !(!(!global4.x))), vec2<bool>(true, true), select(global4.x, -37825i < global0.a, func_3()));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(-2147483647i, abs(~func_1(-871f, vec2<bool>(global4.x, false))), 43091u));
    var var_1 = global2.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(1f, -1649f)), 1526f, _wgslsmith_f_op_f32(1298f - _wgslsmith_f_op_f32(max(296f, -595f)))), vec3<f32>(1f, 1f, 1f)))));
    let var_3 = !global2.b;
    global1 = array<vec3<u32>, 1>();
    global3 = array<i32, 8>();
    let var_4 = vec4<bool>(any(!(!(!var_3))), global2.b.x, true, any(vec4<bool>(false, global4.x, any(vec3<bool>(false, var_3.x, global4.x)) && all(vec4<bool>(true, false, false, global2.b.x)), _wgslsmith_f_op_f32(-514f * var_2.x) >= _wgslsmith_f_op_f32(step(583f, var_2.x)))));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-26083i & _wgslsmith_div_i32(global3[_wgslsmith_index_u32(51168u, 8u)], 0i), var_0.a, 2147483647i), vec3<i32>(-(~(-47133i)), _wgslsmith_add_i32(firstTrailingBit(global3[_wgslsmith_index_u32(global2.a, 8u)]), 7954i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 14455i, var_0.a, -2147483647i), vec4<i32>(var_1.a, var_1.a, var_0.a, var_0.a)), vec4<i32>(global0.a, global2.c.a, var_0.a, 1i) >> (u_input.a % vec4<u32>(32u))))), 4294967295u, 74014u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(reverseBits(global2.c.a), 1i, 1i, _wgslsmith_clamp_i32(-var_0.a ^ 1i, _wgslsmith_div_i32(~(-20403i), ~global3[_wgslsmith_index_u32(4294967295u, 8u)]), reverseBits(countOneBits(global0.a)))));
}

