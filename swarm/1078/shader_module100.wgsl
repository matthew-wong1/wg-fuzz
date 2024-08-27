struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(-9933i, vec3<u32>(0u, 28260u, 39451u), vec3<u32>(66145u, 1u, 0u), true, -1i), Struct_3(-22902i, vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 1422u), true, i32(-2147483648)), Struct_3(-51696i, vec3<u32>(21066u, 1u, 49230u), vec3<u32>(0u, 18417u, 0u), false, 1i), Struct_3(18782i, vec3<u32>(1u, 54321u, 72730u), vec3<u32>(66228u, 1u, 4294967295u), true, 47346i), Struct_3(-22561i, vec3<u32>(0u, 4294967295u, 57456u), vec3<u32>(0u, 4294967295u, 4294967295u), false, -43272i), Struct_3(44379i, vec3<u32>(0u, 18275u, 9638u), vec3<u32>(36458u, 1u, 4294967295u), false, -1i), Struct_3(-1i, vec3<u32>(46557u, 71716u, 1u), vec3<u32>(29103u, 4294967295u, 4294967295u), true, -21530i), Struct_3(1i, vec3<u32>(60437u, 76508u, 4294967295u), vec3<u32>(3720u, 29511u, 1u), true, 29786i), Struct_3(8953i, vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 6341u, 32202u), true, 20583i), Struct_3(-1895i, vec3<u32>(70347u, 4294967295u, 0u), vec3<u32>(7465u, 66468u, 22495u), false, 0i), Struct_3(22281i, vec3<u32>(50483u, 0u, 57253u), vec3<u32>(3977u, 4294967295u, 11514u), false, 38817i), Struct_3(-1i, vec3<u32>(29341u, 35424u, 45264u), vec3<u32>(4502u, 0u, 10401u), false, -1i), Struct_3(i32(-2147483648), vec3<u32>(465u, 4294967295u, 34513u), vec3<u32>(23690u, 1u, 4294967295u), true, 2147483647i), Struct_3(16712i, vec3<u32>(0u, 32908u, 4294967295u), vec3<u32>(1u, 13702u, 51617u), false, 15232i), Struct_3(i32(-2147483648), vec3<u32>(1u, 12873u, 1u), vec3<u32>(19233u, 0u, 27108u), false, -31798i), Struct_3(-5027i, vec3<u32>(9223u, 111297u, 0u), vec3<u32>(12748u, 54848u, 0u), true, 1i), Struct_3(58720i, vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 0u, 4294967295u), true, -1i));

var<private> global1: array<f32, 13> = array<f32, 13>(227f, 118f, -275f, 364f, 1240f, 1687f, 660f, -139f, -574f, -517f, -1268f, 296f, -142f);

var<private> global2: bool;

var<private> global3: vec2<f32> = vec2<f32>(-198f, -593f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global1 = array<f32, 13>();
    global0 = array<Struct_3, 17>();
    let var_0 = global3.x;
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(global3.x * global3.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global3.x) - vec2<f32>(-100f, 529f)))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))))))));
    global0 = array<Struct_3, 17>();
    return true;
}

fn func_2() -> Struct_4 {
    global1 = array<f32, 13>();
    let var_0 = abs(abs(u_input.c.x & countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 72676u, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 18156u, u_input.c.x, 1u)))));
    var var_1 = select(u_input.c, _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(~4294967295u, 1u)), ~(~u_input.c)), true);
    global0 = array<Struct_3, 17>();
    let var_2 = global0[_wgslsmith_index_u32(var_1.x, 17u)];
    return Struct_4(select(select(func_3(), true, true), false, var_2.d), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_2.a, u_input.d), -max(vec2<i32>(u_input.b, var_2.e), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 6802i), vec2<i32>(u_input.b, -2147483647i), vec2<i32>(var_2.a, u_input.d)))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_sub_u32(firstLeadingBit(~69330u), arg_1);
    global1 = array<f32, 13>();
    return ~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-51470i, -1i, var_0.b.x), vec3<i32>(2147483647i, -2147483647i, 68222i)), select(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(-48267i, -5847i, arg_0.a.b), vec3<bool>(false, true, true))), ~(vec3<i32>(arg_0.b.b, -53170i, 32563i) ^ vec3<i32>(arg_0.a.b, -28552i, 11441i))) >> (vec3<u32>(~arg_1, 16920u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 0u, 0u), arg_0.d.zyx)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(func_1(Struct_2(Struct_1(u_input.b, u_input.a, 1397f), Struct_1(20935i, u_input.d, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), false, vec4<u32>(42u, u_input.c.x, u_input.c.x, 4294967295u)), 21886u)) >> (abs(vec3<u32>(63153u, 0u, u_input.c.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-195f, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(30822u, 13u)], 970f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 13u)] - -2315f) * global3.x) + global3.x)), _wgslsmith_f_op_f32(min(-128f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 13u)])))))), ~(~vec2<u32>(1u, u_input.c.x) ^ countOneBits(vec2<u32>(u_input.c.x, u_input.c.x))) >> (~vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)));
}

