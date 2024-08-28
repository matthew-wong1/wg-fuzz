struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true));

var<private> global3: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~0u;
    global2 = array<vec4<bool>, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-919f, -559f, -166f, -721f) + vec4<f32>(-298f, -1513f, -1000f, -1263f)), vec4<f32>(167f, 122f, 564f, 1000f), global3.a.a & global3.c.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1384f, -1000f, -284f, -1260f), vec4<f32>(-269f, -780f, 533f, -1250f))))))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(901f, -1551f))))), _wgslsmith_f_op_f32(max(-1793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f + -1172f) + 148f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(456f * -378f), -457f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1101f, -1343f)) * 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(817f + 2506f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1509f + -1916f), _wgslsmith_f_op_f32(1770f - 1259f))))));
    global1 = global3.d.x;
    var var_2 = u_input.c.x;
    return max(u_input.b, global3.d.x) >> (5417u % 32u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.c.zx;
    var var_1 = Struct_2(Struct_1(true, countOneBits(vec3<i32>(i32(-1i) * -2147483647i, ~(-16996i), ~global0.x))), Struct_1(true, global3.c.b), Struct_1(!global3.b.a, global3.b.b), global3.d);
    global0 = var_1.c.b.zz;
    var var_2 = Struct_2(global3.b, Struct_1(!(true & (var_1.c.b.x == u_input.a.x)), ~select(~var_1.b.b, ~vec3<i32>(global3.a.b.x, 6973i, 1i), vec3<bool>(global3.c.a, var_1.a.a, false))), Struct_1(select(all(global2[_wgslsmith_index_u32(u_input.b, 11u)]), var_1.b.a || true, false), ~vec3<i32>(-28207i, var_1.b.b.x, 0i)), min(max(_wgslsmith_clamp_vec4_u32(~global3.d, vec4<u32>(global3.d.x, 18487u, 35827u, 47313u), ~vec4<u32>(var_0.x, var_1.d.x, var_1.d.x, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, global3.d.x, 59059u), global3.d & vec4<u32>(1u, u_input.c.x, 0u, var_1.d.x))), ~vec4<u32>(_wgslsmith_div_u32(global3.d.x, var_0.x), ~global3.d.x, var_1.d.x, u_input.b)));
    let var_3 = select(~(~((vec2<u32>(1u, var_1.d.x) & var_2.d.yx) << (reverseBits(var_2.d.yx) % vec2<u32>(32u)))), vec2<u32>(4117u, func_3(_wgslsmith_add_i32(var_1.a.b.x, var_2.a.b.x))) ^ var_2.d.zw, any(!vec2<bool>(true, !global3.a.a)));
    return Struct_1(true, firstLeadingBit(vec3<i32>(select(select(-22392i, 20869i, global3.c.a), 12000i, true), ~(~2147483647i), -1i)));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<bool>, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2864f, 345f, -892f, 1000f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1478f, -1757f, 1267f, -760f) - vec4<f32>(-1309f, 582f, -429f, -1357f)))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f), var_0.x);
    global1 = _wgslsmith_mod_u32(select(13898u, 22086u, ~global3.d.x == ~(~52699u)), ~(~(~(0u & global3.d.x))));
    let var_2 = vec4<bool>(true, true, true, select(select(select(global3.d.x, 20249u, global3.c.a) > firstLeadingBit(global3.d.x), !global3.c.a, false | global3.a.a), any(vec4<bool>(false, true, false, !global3.c.a)), all(vec3<bool>(true, true, true))));
    return func_2(_wgslsmith_f_op_f32(var_1 + var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(global0.x, 1i), 39797i);
    var var_2 = _wgslsmith_mod_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(33020u, u_input.c.x))), global3.d.xw);
    let var_3 = vec2<bool>(false, true);
    let var_4 = u_input.a;
    var var_5 = ~global3.a.b.zz;
    let var_6 = min(~max(vec2<i32>(2147483647i, 6895i), firstTrailingBit(global3.c.b.yx)), vec2<i32>(var_4.x, ~(-64458i) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), ~vec3<u32>(259u, 0u, var_2.x)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c.zx), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.x), _wgslsmith_div_vec2_u32(vec2<u32>(32701u, 94941u), u_input.c.zz)), ~global3.d.x >> (~1u % 32u)), var_0.b, 7548u >> (_wgslsmith_sub_u32(4294967295u, ~u_input.b) % 32u));
}

