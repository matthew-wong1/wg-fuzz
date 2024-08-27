struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), vec3<u32>(_wgslsmith_mult_u32(~0u, u_input.a), ~6270u, 1u), _wgslsmith_div_u32(47105u << (global0.x % 32u), u_input.a), u_input.c), Struct_2(Struct_1(vec2<bool>(true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 85999u, u_input.a), vec3<u32>(u_input.a, u_input.a, 15840u)) >> (~vec3<u32>(u_input.a, 0u, global0.x) % vec3<u32>(32u)), ~vec3<u32>(global0.x, global0.x, 46537u) | firstLeadingBit(vec3<u32>(53648u, u_input.a, global0.x))), ~u_input.a, 57393i), Struct_2(Struct_1(vec2<bool>(all(vec3<bool>(true, false, false)), false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, global0.x), vec3<u32>(global0.x, 15937u, u_input.a)) << ((vec3<u32>(global0.x, u_input.a, 78732u) | vec3<u32>(global0.x, u_input.a, global0.x)) % vec3<u32>(32u))), ~1702u, -(~(-45435i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f + _wgslsmith_f_op_f32(f32(-1f) * -1353f))));
    var var_1 = abs(u_input.a) & _wgslsmith_clamp_u32(abs(0u), ~6875u, countOneBits(~(~global0.x)));
    var_1 = _wgslsmith_dot_vec3_u32(var_0.c.b, var_0.c.b) | _wgslsmith_dot_vec3_u32(min(var_0.b.b, select(select(var_0.b.b, var_0.c.b, var_0.c.a.b.x), vec3<u32>(4294967295u, 11446u, 107275u) & var_0.c.b, true)), ~vec3<u32>(abs(global0.x), select(84371u, var_0.c.b.x, var_0.b.a.a.x), 5939u));
    global0 = vec2<u32>(select(firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0.a.b, vec3<u32>(var_0.a.b.x, 42903u, 4294967295u))), 20160u, false), ~_wgslsmith_add_u32(~4294967295u, min(var_0.a.b.x, 0u)));
    let var_2 = 2743f;
    return countOneBits(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~u_input.c), ~vec2<i32>(var_0.c.d, 22146i) | vec2<i32>(-41937i, -1i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, ~global0.x));
    var var_1 = arg_1;
    global0 = ~_wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(666u, u_input.a))), ~(~max(vec2<u32>(4294967295u, u_input.a), var_0)));
    let var_2 = arg_0.x;
    let var_3 = arg_0;
    return reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29446u, u_input.a, 35211u) << (vec4<u32>(0u, 24249u, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.x, global0.x, u_input.a), vec4<u32>(1u, var_0.x, 33855u, var_0.x), vec4<u32>(var_0.x, global0.x, 0u, 94044u))) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 35623u), vec3<u32>(var_0.x, 0u, var_0.x))) & 864u;
}

fn func_2() -> Struct_3 {
    global0 = ~vec2<u32>(~(~global0.x & global0.x), func_4(func_3(), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-377f, -1000f, -1718f), vec3<f32>(-123f, 1000f, -2436f), vec3<bool>(false, true, false))), vec3<f32>(-1000f, 2299f, 473f)))));
    global0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(max(~vec2<u32>(u_input.a, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 11996u), vec2<u32>(0u, global0.x))), select(reverseBits(vec2<u32>(u_input.a, 7021u)), vec2<u32>(global0.x, 5354u), true)), ~(~(vec2<u32>(0u, u_input.a) & vec2<u32>(97512u, u_input.a))));
    global0 = vec2<u32>(firstLeadingBit(46068u), 1u);
    var var_0 = 37116u >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.a, 30779u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(8386u, 27181u)), _wgslsmith_sub_vec2_u32(min(~vec2<u32>(u_input.a, 19088u), ~vec2<u32>(global0.x, 0u)), vec2<u32>(1u, 1u))) % 32u);
    global0 = min(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(global0.x, 4294967295u) << (vec2<u32>(u_input.a, global0.x) % vec2<u32>(32u)), max(vec2<u32>(4294967295u, 0u), vec2<u32>(53933u, global0.x)), true), ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(44965u, u_input.a))), firstTrailingBit(reverseBits(vec2<u32>(35027u, global0.x)))), ~(vec2<u32>(global0.x, _wgslsmith_add_u32(58938u, global0.x)) & (~vec2<u32>(u_input.a, 22866u) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 27352u), vec2<u32>(1u, 22615u)) % vec2<u32>(32u)))));
    return Struct_3(Struct_2(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), select(abs(vec3<u32>(55226u, 33194u, u_input.a) << (vec3<u32>(global0.x, 75419u, u_input.a) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, 0u, 0u), vec3<u32>(1u, global0.x, 11361u)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), 1u, countOneBits(u_input.c & abs(-6656i))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, -25915i < u_input.c, true)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 9481u, 1u) << (vec3<u32>(u_input.a, 15842u, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, global0.x, 32053u)), _wgslsmith_div_u32(0u, 83370u << (select(26379u, global0.x, false) % 32u)), 22639i), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, select(true, true, true), true)), ~countOneBits(max(vec3<u32>(73333u, u_input.a, global0.x), vec3<u32>(global0.x, 4294967295u, u_input.a))), global0.x, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-571f, 1142f))))) * 1036f));
}

fn func_1() -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = func_2();
    let var_2 = -645f;
    var var_3 = var_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec2<u32>(~0u, abs(11660u));
    global0 = ~vec2<u32>(4294967295u, 1810u);
    var var_1 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(false, var_0))), !select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, var_0), false)), _wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a, 45077u, 1u)), ~(~vec3<u32>(1872u, 13644u, global0.x))), func_2().b.c, 2147483647i), Struct_2(func_2().a.a, vec3<u32>(~4294967295u, reverseBits(min(0u, 1u)), abs(50324u)), _wgslsmith_add_u32(~4294967295u, select(1u, 26874u, var_0) & max(global0.x, global0.x)), u_input.c), func_2().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-718f - -546f)))) - _wgslsmith_f_op_f32(333f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1040f - 1006f))))));
    global0 = _wgslsmith_mult_vec2_u32(abs(~countOneBits(vec2<u32>(47207u, var_1.b.b.x) << (var_1.c.b.zy % vec2<u32>(32u)))), reverseBits(var_1.a.b.xz) & ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 96799u) >> (var_1.a.b.yx % vec2<u32>(32u)), var_1.b.b.yz));
    var_1 = func_2();
    var var_2 = func_2().b;
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(var_2.b.x, 129903u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.x, 16477u), var_1.a.b.zx))) ^ func_2().a.b.yz);
}

