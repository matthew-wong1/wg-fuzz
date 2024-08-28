struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 34107u), vec2<u32>(1u, 22914u), vec2<u32>(76243u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(19513u, 0u), vec2<u32>(1u, 34520u), vec2<u32>(1u, 4294967295u), vec2<u32>(2127u, 8667u), vec2<u32>(78456u, 0u), vec2<u32>(24214u, 13524u), vec2<u32>(43332u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1898u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 33437u), vec2<u32>(86905u, 52131u), vec2<u32>(1u, 85528u), vec2<u32>(1u, 47683u), vec2<u32>(4294967295u, 6369u), vec2<u32>(0u, 4294967295u), vec2<u32>(135203u, 0u), vec2<u32>(0u, 74126u));

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 11>;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true), 48095u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    var var_0 = u_input.b.x;
    var_0 = 81509u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1995f + _wgslsmith_f_op_f32(-337f - -806f)))) - -138f) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1180f + -996f))), 461f), _wgslsmith_f_op_f32(ceil(125f)))));
    var var_2 = u_input.b.x;
    var_0 = u_input.b.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1099f)))))), -1219f));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global1 = array<vec2<u32>, 23>();
    global1 = array<vec2<u32>, 23>();
    let var_0 = ~(~select(abs(vec4<u32>(1u, 4294967295u, 35082u, 10169u)), _wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(15u, global4.b, global4.b, 4294967295u)), !arg_2.a.x) & (arg_0 >> (vec4<u32>(_wgslsmith_div_u32(77730u, 1u), firstLeadingBit(arg_0.x), abs(u_input.b.x), 36656u) % vec4<u32>(32u))));
    var var_1 = min(_wgslsmith_mult_vec3_i32(vec3<i32>(1i | reverseBits(u_input.a.x), -1i, 1i), vec3<i32>(~u_input.a.x, 2147483647i, 33260i) | select(~vec3<i32>(22753i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), true)), -vec3<i32>(4943i, 2147483647i, reverseBits(~u_input.a.x)));
    var var_2 = -33475i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3909f) - _wgslsmith_f_op_f32(f32(-1f) * -509f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(867f - -532f), 119f)))), _wgslsmith_f_op_f32(func_3(true, ~vec4<i32>(-63756i, -5174i, -2147483647i, 0i)))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(abs(244f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1302f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(38055u, global4.b, 1u, global4.b), true, global3[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_div_f32(453f, -181f))), 362f);
    var var_1 = _wgslsmith_dot_vec2_i32(abs(reverseBits(vec2<i32>(82825i, u_input.a.x))) & -abs(u_input.a), ~vec2<i32>(~u_input.a.x, 2247i));
    let var_2 = Struct_2(vec3<u32>(u_input.b.x, global4.b, ~(~16338u)), global3[_wgslsmith_index_u32(78984u, 11u)], vec3<bool>(any(vec4<bool>(true, true, any(vec4<bool>(true, global4.a.x, false, global4.a.x)), global4.a.x)), all(select(vec3<bool>(global4.a.x, global4.a.x, true), vec3<bool>(true, global4.a.x, global4.a.x), select(vec3<bool>(false, true, false), vec3<bool>(global4.a.x, true, false), vec3<bool>(false, false, global4.a.x)))), global4.a.x), vec2<i32>(reverseBits(~(u_input.a.x << (0u % 32u))), (~(-1899i) << (u_input.b.x % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global4.b, global4.b), u_input.b.zxz & u_input.b.zxx) % 32u)));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = func_1().b;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1485f, 1f, -2132f, 2213f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1251f, -1760f, -815f, -761f)))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1124f - -905f)))), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(747f * -573f), -1000f), 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(false, global4.a.x, false), -vec4<i32>(arg_0.d.x, -38443i, arg_0.d.x, u_input.a.x))))));
    let var_2 = Struct_2(vec3<u32>(~(~var_0.b), abs(reverseBits(arg_2.b)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.b, u_input.b.x, arg_2.b, arg_1)), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b))) >> (vec3<u32>(32425u, arg_2.b, var_0.b) % vec3<u32>(32u)), arg_0.b, arg_0.c, vec2<i32>(func_1().d.x, _wgslsmith_div_i32(arg_0.d.x, arg_0.d.x)));
    let var_3 = func_1().c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), ~u_input.b.x, global3[_wgslsmith_index_u32(1u, 11u)], any(func_1().b.a));
    let var_1 = Struct_2(u_input.b.wxx, Struct_1(select(func_1().b.a, var_0.b.a, select(var_0.c.xx, !global4.a, true)), global4.b << (reverseBits(1u) % 32u)), vec3<bool>(true, false, var_0.c.x), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x), select(vec3<i32>(var_0.d.x, 0i, -10881i), vec3<i32>(u_input.a.x, -38837i, u_input.a.x), vec3<bool>(global4.a.x, false, false))), var_0.d.x), _wgslsmith_div_i32(min(0i, -u_input.a.x), min(i32(-1i) * -23499i, func_4(Struct_2(vec3<u32>(10625u, var_0.b.b, u_input.b.x), global3[_wgslsmith_index_u32(var_0.a.x, 11u)], var_0.c, var_0.d), 4294967295u, global3[_wgslsmith_index_u32(global4.b, 11u)], false).d.x))));
    let var_2 = var_0.b;
    let var_3 = var_0.b;
    let var_4 = vec2<bool>(true, true);
    global3 = array<Struct_1, 11>();
    var_0 = Struct_2(var_1.a, func_4(var_1, 46858u, func_4(func_4(Struct_2(vec3<u32>(var_3.b, var_1.a.x, var_2.b), Struct_1(vec2<bool>(true, var_4.x), var_2.b), vec3<bool>(var_3.a.x, var_0.b.a.x, global4.a.x), var_1.d), 1u, func_4(Struct_2(var_0.a, Struct_1(vec2<bool>(var_1.c.x, var_0.c.x), var_0.b.b), var_1.c, vec2<i32>(-2147483647i, var_0.d.x)), 15175u, Struct_1(var_1.b.a, 22486u), var_4.x).b, all(var_0.c)), min(_wgslsmith_dot_vec3_u32(vec3<u32>(11745u, var_3.b, 15766u), vec3<u32>(1u, var_0.b.b, var_3.b)), ~u_input.b.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_2.b, var_1.a.x, 4294967295u, var_0.b.b)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b, 0u, 1u, 4294967295u), vec4<u32>(41180u, 18648u, 18637u, var_0.a.x))), 11u)], true).b, true).b, select(!vec3<bool>(!var_4.x, global4.a.x, var_2.a.x), vec3<bool>(!(6996i >= u_input.a.x), any(!vec4<bool>(var_3.a.x, var_0.c.x, true, var_1.b.a.x)), any(!vec4<bool>(false, false, var_1.b.a.x, false))), false), vec2<i32>(-(i32(-1i) * -u_input.a.x), var_0.d.x));
    let var_5 = u_input.b;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1856f, _wgslsmith_f_op_f32(-2637f + _wgslsmith_f_op_f32(1881f - 428f))))));
}

