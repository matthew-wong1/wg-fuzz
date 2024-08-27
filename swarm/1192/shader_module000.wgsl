struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(9718u, 4294967295u, 60568u, 21607u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(0u, 4294967295u, 11476u, 54857u), vec4<u32>(56014u, 1u, 1u, 4294967295u), vec4<u32>(4275u, 4294967295u, 23472u, 56843u), vec4<u32>(0u, 0u, 0u, 19272u), vec4<u32>(26420u, 38695u, 34783u, 0u), vec4<u32>(68090u, 0u, 0u, 72793u), vec4<u32>(1u, 4294967295u, 98279u, 1946u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 59873u), vec4<u32>(4294967295u, 4294967295u, 2889u, 1u), vec4<u32>(1u, 61063u, 6619u, 26398u), vec4<u32>(4294967295u, 8801u, 0u, 4664u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    global1 = array<vec4<u32>, 14>();
    var var_0 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), vec3<bool>(any(vec3<bool>(true, true, true)), true, true), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(675f))) == arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x * -512f));
    var var_2 = Struct_5(Struct_4(61364u), !vec2<bool>(all(!vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x));
    var_2 = Struct_5(var_2.a, !vec2<bool>(all(vec3<bool>(var_0.x, true, true)), !var_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-656f - arg_1.x) - _wgslsmith_f_op_f32(sign(974f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_div_u32(u_input.a, 5017u), 2147483647i, Struct_1(~vec3<u32>(abs(0u), abs(u_input.d), ~1u), vec2<i32>(reverseBits(u_input.e) << (~u_input.d % 32u), countOneBits(7390i << (u_input.a % 32u))), ~(~abs(30192u))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2976i, -22739i, -10049i) >> (vec4<u32>(u_input.d, 1u, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], 6472i, global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), reverseBits(vec4<i32>(2147483647i, 58486i, 48205i, 2147483647i)) >> (global1[_wgslsmith_index_u32(u_input.d ^ 1u, 14u)] % vec4<u32>(32u)))), _wgslsmith_mult_i32(~(-2147483647i), 2147483647i & ~u_input.b.x));
    var_0 = Struct_2(~(~(~var_0.a)) & var_0.c.c, ~(~1i), var_0.c, var_0.d | vec4<i32>(~(-10150i), ~1i, global0[_wgslsmith_index_u32(~1u ^ (var_0.a | var_0.a), 13u)], ~2147483647i), ~(-(~2147483647i)) << (_wgslsmith_mod_u32(u_input.d ^ ~u_input.d, var_0.c.c) % 32u));
    var_0 = Struct_2(~32433u ^ var_0.a, (((u_input.e & 13197i) << ((var_0.c.c | u_input.a) % 32u)) >> (u_input.d % 32u)) << (firstLeadingBit(u_input.a) % 32u), Struct_1(var_0.c.a, u_input.b, 4294967295u), vec4<i32>(global0[_wgslsmith_index_u32(~0u, 13u)], 64119i, i32(-1i) * -(~2147483647i), min(_wgslsmith_div_i32(~u_input.e, firstLeadingBit(var_0.b)), abs(17695i))), ~(-2147483647i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(775f, 1047f, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1273f, -1249f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_f_op_f32(floor(1017f))), ~(u_input.a << (1u % 32u)) > 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-708f + 936f) - -1248f))))));
    var var_2 = abs(vec4<i32>(var_0.b, var_0.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_0.d.x), countOneBits(vec2<i32>(-8842i, 1i))), countOneBits(countOneBits(1i)))) ^ min(reverseBits(abs(vec4<i32>(-9020i, u_input.b.x, 0i, -32325i))), var_0.d);
    return !select(select(vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, true), true), vec2<bool>(false, true), var_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(84612u, 13u)], firstLeadingBit(global0[_wgslsmith_index_u32(u_input.d, 13u)])) << (~vec2<u32>(4294967295u, ~0u) % vec2<u32>(32u)));
    global1 = array<vec4<u32>, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(654f, 1816f)))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(721f, 1992f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, 205f) * vec2<f32>(1000f, 1899f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, 813f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, vec4<f32>(1000f, -1100f, 1531f, 632f))), -215f)), func_3())));
    let var_2 = ~(-var_0.x);
    global1 = array<vec4<u32>, 14>();
    return Struct_3(firstTrailingBit(vec4<u32>(~0u, _wgslsmith_mult_u32(4294967295u & u_input.d, ~1u), 4294967295u, 48100u)), Struct_1(~(~vec3<u32>(u_input.a, u_input.d, u_input.d) >> (vec3<u32>(24724u, 4294967295u, u_input.d) % vec3<u32>(32u))), _wgslsmith_div_vec2_i32(select(u_input.b, vec2<i32>(2147483647i, -20486i), vec2<bool>(true, true)), select(vec2<i32>(var_0.x, 2147483647i), vec2<i32>(u_input.c, var_2), false)), u_input.d << (4294967295u % 32u)), ~(u_input.a << (_wgslsmith_mod_u32(~4294967295u, ~78620u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(~vec4<u32>(min(~17009u, 1u), var_0.c, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.b.a, var_0.b.a), var_0.c), ~u_input.d | var_0.a.x), var_0.b, _wgslsmith_dot_vec4_u32((vec4<u32>(23057u, 7704u, 0u, u_input.a) << (var_0.a % vec4<u32>(32u))) | countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 66857u), vec4<u32>(var_0.c, 1631u, 1u, u_input.a))), vec4<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d), ~u_input.a, 14128u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 3485u, 61076u), var_0.b.a | var_0.b.a))));
    global1 = array<vec4<u32>, 14>();
    global1 = array<vec4<u32>, 14>();
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var_0 = func_1();
    let var_2 = var_0.a.yy;
    var var_3 = !(!select(select(all(vec4<bool>(false, true, true, true)), true, false), !any(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1170f)))) + 1878f)), var_0.a.wzy, _wgslsmith_div_vec2_u32(var_1.a.yw, _wgslsmith_add_vec2_u32(~var_0.b.a.xx, vec2<u32>(u_input.d, ~var_2.x))), ~vec4<u32>(select(u_input.d, _wgslsmith_mult_u32(111201u, 34387u), true), 47005u, 91971u, u_input.a), min(vec3<u32>(var_0.c, ~_wgslsmith_div_u32(66206u, var_2.x), _wgslsmith_mod_u32(0u, 1u)), abs(var_0.b.a) >> (var_0.a.xwx % vec3<u32>(32u))));
}

