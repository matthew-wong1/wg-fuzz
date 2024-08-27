struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-1i, -1i), false, -1025f, vec3<u32>(18923u, 4294967295u, 418u), false), Struct_1(vec2<i32>(2147483647i, 0i), true, -722f, vec3<u32>(12235u, 4661u, 1u), true), Struct_1(vec2<i32>(19620i, 45431i), false, -1000f, vec3<u32>(39653u, 1u, 1u), false), Struct_1(vec2<i32>(0i, 0i), true, -1607f, vec3<u32>(85883u, 5404u, 22181u), false), Struct_1(vec2<i32>(18541i, -48746i), false, 501f, vec3<u32>(41596u, 7528u, 51131u), false), Struct_1(vec2<i32>(-1i, 49305i), true, 1617f, vec3<u32>(51931u, 1u, 17456u), false), Struct_1(vec2<i32>(-1i, 1i), true, -982f, vec3<u32>(8034u, 1u, 1u), true), Struct_1(vec2<i32>(i32(-2147483648), -1i), true, 362f, vec3<u32>(36578u, 4294967295u, 76896u), false), Struct_1(vec2<i32>(-34625i, 1i), false, 667f, vec3<u32>(3936u, 65143u, 3044u), false), Struct_1(vec2<i32>(1i, i32(-2147483648)), true, 174f, vec3<u32>(4294967295u, 4294967295u, 18135u), true), Struct_1(vec2<i32>(-1i, 11838i), false, 189f, vec3<u32>(4294967295u, 0u, 46971u), true), Struct_1(vec2<i32>(-81466i, -28126i), true, -720f, vec3<u32>(0u, 47017u, 114u), true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, global1.x)))));
    let var_1 = max(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(59588u, 7289u, u_input.a), vec3<u32>(18576u, u_input.a, 51884u)), vec3<u32>(1u, ~u_input.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(58555u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(32119u, 26342u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, 45515u))))), ~(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 15560u), vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(23438u, 4294967295u, 5334u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(6202u, u_input.a, u_input.a))) ^ ~(~vec3<u32>(u_input.a, 53380u, u_input.a))));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 80778u | u_input.a), 12u)];
    var var_3 = reverseBits(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, 18536i | var_2.a.x), vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.c.x, -8341i)), u_input.c.x));
    var var_4 = Struct_1(_wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, 0i), var_2.a), u_input.c.zz), true, var_2.c, _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(~u_input.a), abs(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.d, vec3<u32>(112981u, 1u, 0u)), vec3<u32>(u_input.a, 4294967295u, 1u))), _wgslsmith_add_vec3_u32(reverseBits(var_1 | var_2.d), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_2.d.x, var_2.d.x), ~var_1))), (var_2.a.x < ((u_input.d.x | 11640i) | -50937i)) || select(-u_input.d.x != var_2.a.x, all(vec3<bool>(global2.x, global2.x, var_2.b)) || var_2.e, var_2.e));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, global1.x)) + vec2<f32>(1000f, var_0)))));
}

fn func_3() -> vec3<u32> {
    let var_0 = global3[_wgslsmith_index_u32(33262u, 12u)];
    var var_1 = vec2<bool>(true, true);
    var_1 = vec2<bool>(select(var_0.b, true, !(global2.x || true)), all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_f32(max(-387f, 875f));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global1.x - global1.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, -121f, 698f)) + vec3<f32>(-674f, 754f, var_0.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, global1.x), vec3<f32>(1508f, -481f, -1608f))))))));
    return vec3<u32>(~_wgslsmith_mod_u32(1u, select(u_input.a, _wgslsmith_div_u32(var_0.d.x, 1u), any(vec3<bool>(var_0.e, true, var_0.e)))), ~0u, ~4294967295u);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2())));
    let var_0 = func_3();
    global3 = array<Struct_1, 12>();
    let var_1 = select(select(!(!(!vec4<bool>(true, global2.x, global2.x, false))), !select(select(vec4<bool>(false, true, global2.x, false), vec4<bool>(true, global2.x, global2.x, global2.x), false), vec4<bool>(global2.x, global2.x, false, true), false), vec4<bool>(global2.x, true, all(vec4<bool>(false, true, global2.x, global2.x)), !global2.x | global2.x)), !(!(!(!vec4<bool>(global2.x, true, false, global2.x)))), select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(global2.x, global2.x, global2.x, true), global2.x | true), !select(vec4<bool>(global2.x, global2.x, true, true), select(vec4<bool>(global2.x, false, false, false), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, false, true)), !global2.x), any(select(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), true), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, false, global2.x)), false))));
    var var_2 = global3[_wgslsmith_index_u32(var_0.x, 12u)];
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = !(-1000f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - -630f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.x, global1.x)))), _wgslsmith_f_op_f32(step(738f, 625f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<i32>(16431i, u_input.d.x, -47189i) << (vec3<u32>(u_input.a, 77138u, u_input.a) % vec3<u32>(32u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)) + -336f)));
    var var_3 = ~(~(~(~(vec4<u32>(u_input.a, u_input.a, 40922u, u_input.a) << (vec4<u32>(u_input.a, 6637u, 0u, u_input.a) % vec4<u32>(32u))))));
    let var_4 = Struct_1(~vec2<i32>(u_input.c.x, -abs(-5679i)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f * global1.x) - _wgslsmith_f_op_f32(min(var_2.x, var_2.x))))), vec3<u32>(u_input.a, 1u, 0u), !var_1);
    var var_5 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-15107i, u_input.d.x), u_input.d.yw, _wgslsmith_mod_vec2_i32(var_4.a, ~u_input.d.wy)), var_1, 358f, vec3<u32>(var_3.x, var_4.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_4.d.x, 3030u), var_4.d >> (var_4.d % vec3<u32>(32u)))) << (~max(vec3<u32>(u_input.a, 1u, var_4.d.x) << (var_4.d % vec3<u32>(32u)), vec3<u32>(63461u, 4294967295u, 3819u)) % vec3<u32>(32u)), global2.x);
    var_3 = vec4<u32>(6684u << (var_4.d.x % 32u), var_4.d.x, min(~var_4.d.x, ~u_input.a), 6800u & var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(1u, var_5.d.x, 17466u, u_input.a) | vec4<u32>(1u, u_input.a, var_5.d.x, 58637u)), abs(~select(vec4<u32>(1u, u_input.a, 39677u, 12905u), vec4<u32>(var_3.x, 45800u, var_4.d.x, var_3.x), true))), var_5.d.x, reverseBits(var_5.a.x), var_2.yw, _wgslsmith_dot_vec3_i32(u_input.d.xxz, (u_input.d.xyy ^ u_input.d.xyz) ^ _wgslsmith_clamp_vec3_i32(u_input.d.yzw, vec3<i32>(u_input.c.x, -58867i, 28936i), vec3<i32>(u_input.d.x, -85580i, -2147483647i))) >> ((1u & u_input.a) % 32u));
}

