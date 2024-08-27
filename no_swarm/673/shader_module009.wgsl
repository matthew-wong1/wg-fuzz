struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec4<i32>(-38056i, -12026i, -40596i, -15491i)), vec4<u32>(33594u, 6173u, 4294967295u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(10570i, 0i, 3915i, -35248i)), vec4<u32>(0u, 0u, 18041u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(-19063i, -37857i, -51581i, 34957i)), vec4<u32>(4294967295u, 0u, 127262u, 31315u)), Struct_3(Struct_1(vec4<i32>(2147483647i, -1i, -7516i, 10809i)), vec4<u32>(51417u, 59727u, 118971u, 8273u)), Struct_3(Struct_1(vec4<i32>(0i, -30394i, 1i, -1178i)), vec4<u32>(4294967295u, 0u, 0u, 20774u)), Struct_3(Struct_1(vec4<i32>(0i, 46700i, -70065i, -44717i)), vec4<u32>(22387u, 1u, 0u, 0u)), Struct_3(Struct_1(vec4<i32>(-1i, -41654i, -1i, -13751i)), vec4<u32>(27871u, 49225u, 1u, 33404u)), Struct_3(Struct_1(vec4<i32>(-1i, 1i, 21357i, -44789i)), vec4<u32>(11963u, 1u, 4818u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), -44817i, i32(-2147483648))), vec4<u32>(65472u, 32208u, 40001u, 49768u)), Struct_3(Struct_1(vec4<i32>(2147483647i, 2147483647i, 1i, -1i)), vec4<u32>(25373u, 47462u, 9684u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(-24429i, -26685i, -26941i, i32(-2147483648))), vec4<u32>(1u, 55157u, 35305u, 0u)), Struct_3(Struct_1(vec4<i32>(19033i, 1i, 2147483647i, i32(-2147483648))), vec4<u32>(31976u, 10455u, 0u, 43514u)), Struct_3(Struct_1(vec4<i32>(6937i, -62252i, 0i, 2147483647i)), vec4<u32>(1u, 0u, 11107u, 0u)), Struct_3(Struct_1(vec4<i32>(-23443i, 2147483647i, -10581i, 0i)), vec4<u32>(4173u, 45945u, 9793u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(-13234i, 5378i, 34993i, -1i)), vec4<u32>(30689u, 1u, 112673u, 67318u)), Struct_3(Struct_1(vec4<i32>(-5797i, i32(-2147483648), 214i, -3597i)), vec4<u32>(13281u, 18476u, 87202u, 0u)), Struct_3(Struct_1(vec4<i32>(4997i, 2147483647i, 0i, i32(-2147483648))), vec4<u32>(1u, 46241u, 64322u, 0u)), Struct_3(Struct_1(vec4<i32>(12593i, -36108i, -19126i, 37647i)), vec4<u32>(0u, 42312u, 1u, 1u)), Struct_3(Struct_1(vec4<i32>(16055i, -49753i, 5233i, -9877i)), vec4<u32>(18511u, 76237u, 1u, 82176u)), Struct_3(Struct_1(vec4<i32>(22479i, -825i, -16762i, 259i)), vec4<u32>(6301u, 5334u, 0u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(-1i, 11400i, 2147483647i, -75707i)), vec4<u32>(11986u, 59120u, 0u, 4294967295u)));

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_div_f32(-2053f, -110f)))))), _wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -566f), 1000f, true)), _wgslsmith_f_op_f32(trunc(1f))))), true));
    global0 = array<Struct_3, 21>();
    let var_1 = _wgslsmith_f_op_f32(342f + -495f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1208f, -1443f)) - -421f) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(543f, -1839f), _wgslsmith_f_op_f32(-132f + -1000f), all(vec3<bool>(true, false, true)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1599f, _wgslsmith_div_f32(308f, -172f)), 278f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(476f - 544f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 159f) - _wgslsmith_f_op_f32(max(137f, -869f))))));
    var var_2 = false;
    return Struct_1(vec4<i32>(reverseBits(1i), _wgslsmith_mult_i32(u_input.a << ((u_input.d.x << (u_input.d.x % 32u)) % 32u), 52716i), _wgslsmith_dot_vec2_i32(~u_input.c.xx ^ _wgslsmith_clamp_vec2_i32(u_input.c.xx, u_input.c.xz, u_input.c.xx), u_input.c.xx), u_input.c.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = 1655f;
    global0 = array<Struct_3, 21>();
    global1 = Struct_2(~(59189u & ~u_input.d.x) & (4133u << (u_input.b % 32u)));
    global1 = arg_3;
    global1 = Struct_2(u_input.b);
    return abs(u_input.d.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global1 = Struct_2(u_input.b);
    return _wgslsmith_dot_vec2_u32(~(u_input.d.zz ^ vec2<u32>(~u_input.d.x, 1u)), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(5603u, global1.a) >> (_wgslsmith_mult_vec2_u32(u_input.d.zx, u_input.d.yz) % vec2<u32>(32u))), u_input.d.zx >> (vec2<u32>(global1.a | global1.a, global1.a) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.b), u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = ~vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 88997u, global1.a, global1.a) | vec4<u32>(0u, u_input.d.x, 37208u, 5983u), vec4<u32>(u_input.d.x, u_input.d.x, global1.a, global1.a)), ~(~6795u) << (firstLeadingBit(func_2(vec3<u32>(u_input.b, 4294967295u, global1.a), -422f, false, Struct_2(0u))) % 32u));
    var var_2 = Struct_2(~func_3(func_1(), firstLeadingBit(u_input.c.xz)) >> (59667u % 32u));
    var var_3 = vec3<i32>(u_input.c.x, u_input.a, -2147483647i) >> (max(max(u_input.d, var_1), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a, 54362u, 19352u), ~u_input.d)) % vec3<u32>(32u));
    var var_4 = Struct_2(4294967295u);
    global0 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)) + -453f)));
}

