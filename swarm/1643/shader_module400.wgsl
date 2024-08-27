struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 129051u;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(96364u, vec3<u32>(0u, 0u, 1u)), Struct_1(48553u, vec3<u32>(43196u, 44476u, 0u)), Struct_1(55978u, vec3<u32>(27206u, 17366u, 4294967295u)), Struct_1(20254u, vec3<u32>(4294967295u, 4294967295u, 15335u)), Struct_1(0u, vec3<u32>(1u, 0u, 109173u)), Struct_1(0u, vec3<u32>(1u, 18728u, 20314u)), Struct_1(1u, vec3<u32>(1u, 7645u, 0u)), Struct_1(20193u, vec3<u32>(102093u, 0u, 46057u)), Struct_1(20169u, vec3<u32>(53236u, 83843u, 4294967295u)), Struct_1(0u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(0u, vec3<u32>(0u, 25671u, 0u)), Struct_1(47931u, vec3<u32>(0u, 0u, 16966u)), Struct_1(17108u, vec3<u32>(4532u, 7696u, 70558u)), Struct_1(1u, vec3<u32>(0u, 0u, 4294967295u)), Struct_1(5742u, vec3<u32>(22404u, 2241u, 3492u)), Struct_1(1u, vec3<u32>(30196u, 15427u, 5616u)), Struct_1(0u, vec3<u32>(50747u, 3101u, 18117u)), Struct_1(25276u, vec3<u32>(24985u, 4316u, 51727u)), Struct_1(18262u, vec3<u32>(53667u, 55715u, 32064u)), Struct_1(48021u, vec3<u32>(20329u, 4294967295u, 0u)), Struct_1(0u, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(1u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(51912u, vec3<u32>(4294967295u, 23157u, 50813u)), Struct_1(6734u, vec3<u32>(8372u, 41349u, 0u)), Struct_1(43719u, vec3<u32>(0u, 66071u, 3335u)), Struct_1(73672u, vec3<u32>(0u, 4294967295u, 76127u)), Struct_1(49245u, vec3<u32>(25015u, 4294967295u, 34396u)), Struct_1(4294967295u, vec3<u32>(10788u, 0u, 0u)), Struct_1(93253u, vec3<u32>(49485u, 23151u, 4294967295u)), Struct_1(49421u, vec3<u32>(22501u, 4294967295u, 73848u)), Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 83543u)), Struct_1(53342u, vec3<u32>(0u, 1u, 70361u)));

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(4294967295u, vec3<u32>(4294967295u, 1u, 13323u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = 1i;
    global3 = u_input.a.xz;
    let var_1 = _wgslsmith_div_u32(global3.x, ~19086u);
    global4 = Struct_1(83957u, ~global4.b);
    let var_2 = firstLeadingBit(0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1579f * _wgslsmith_f_op_f32(f32(-1f) * -799f)))));
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(2072f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(788f, -172f, true)) * 1802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, 1000f), _wgslsmith_div_f32(897f, -111f))) * _wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(u_input.a.x, 16175u))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1502f, -1000f)))), -1138f)));
    global1 = _wgslsmith_dot_vec3_u32(global4.b, vec3<u32>(~u_input.a.x, countOneBits(abs(~0u)), abs(_wgslsmith_mod_u32(reverseBits(0u), global4.b.x))));
    var var_1 = global2[_wgslsmith_index_u32(~1u, 32u)];
    global0 = vec3<bool>(global0.x, true, global0.x);
    global0 = select(select(vec3<bool>(any(global0.yx), true, _wgslsmith_f_op_f32(-var_0.x) >= -1614f), vec3<bool>(all(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, true, global0.x, global0.x), global0.x)), !global0.x, any(!vec3<bool>(global0.x, global0.x, true))), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, global0.x == global0.x), !global0.x)), vec3<bool>(firstLeadingBit(global4.b.x) != ~var_1.b.x, true, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(var_1.b.x, 59876u)) < 0u), !(!vec3<bool>(global0.x, global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, true)))));
    return _wgslsmith_div_u32(0u, ~u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u << (arg_0.a % 32u), abs(arg_0.b.x)), vec2<u32>(global4.b.x, global3.x) ^ arg_0.b.xy), min(countOneBits(~vec2<u32>(arg_0.a, global3.x)), arg_0.b.zy)), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, global3.x, 4294967295u), vec4<u32>(arg_0.a, 4294967295u, global4.b.x, 69587u), true) << (max(vec4<u32>(1u, global3.x, u_input.a.x, 27077u), vec4<u32>(59853u, 105975u, arg_0.b.x, 6164u)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(arg_0.b.x, global3.x, 99083u, arg_0.b.x) ^ vec4<u32>(92073u, global3.x, arg_0.a, u_input.a.x)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(max(arg_2.x, 1024f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(974f)) * -374f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_2.x, 1122f))))), arg_2.x)));
    global3 = ~arg_0.b.zx;
    global2 = array<Struct_1, 32>();
    var var_2 = Struct_1(~var_0.x, reverseBits(_wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(71956u, 81480u, global4.a), u_input.a)), min(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(global4.b, vec3<u32>(var_0.x, global3.x, 0u))))));
    return vec4<i32>(-(~u_input.b.x), min(_wgslsmith_mod_i32(1i, u_input.c), _wgslsmith_sub_i32(~_wgslsmith_add_i32(2147483647i, u_input.c), -1i)), reverseBits(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.b)), u_input.b)), -2147483647i);
}

fn func_1() -> vec4<f32> {
    global2 = array<Struct_1, 32>();
    let var_0 = func_4(Struct_1(func_2(-1209f, ~abs(u_input.b.x)), vec3<u32>(~global3.x, 4294967295u, _wgslsmith_sub_u32(global4.b.x, 1u)) & ~u_input.a), vec2<bool>(any(select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, false), global0.yy, false), global0.xx)), (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 70434i), vec3<i32>(0i, u_input.c, u_input.c)) ^ max(0i, 2147483647i)) <= _wgslsmith_div_i32(0i, -1i)), vec4<f32>(_wgslsmith_div_f32(593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(671f)) + _wgslsmith_f_op_f32(min(-1000f, 638f)))), -868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(677f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(594f, -1416f))), _wgslsmith_div_f32(957f, 870f)));
    global1 = ~_wgslsmith_mod_u32(abs(global3.x) >> (countOneBits(firstLeadingBit(4294967295u)) % 32u), _wgslsmith_sub_u32(global4.b.x, max(abs(global4.a), countOneBits(global3.x))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(64939u, _wgslsmith_dot_vec2_u32(~vec2<u32>(42198u, u_input.a.x), u_input.a.xx)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(120277u, 26615u, global4.b.x, global3.x), vec4<u32>(1u, u_input.a.x, 21964u, var_1.b.x)), vec4<u32>(1u, global3.x, u_input.a.x, global3.x)), ~(~vec4<u32>(1u, 4294967295u, 0u, 4294967295u)))), global4.b.yx << (vec2<u32>(~1u, u_input.a.x) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-315f, 316f))), 900f, _wgslsmith_f_op_f32(-462f * _wgslsmith_div_f32(1144f, -803f)), _wgslsmith_f_op_f32(f32(-1f) * -323f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1502f)) + _wgslsmith_f_op_f32(func_3(global3.x))), _wgslsmith_f_op_f32(-602f - -1320f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(913f - -1152f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1895f)), _wgslsmith_f_op_f32(1453f + -1242f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 32>();
    global1 = firstTrailingBit(_wgslsmith_div_u32(~(~1u), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), max(~4294967295u, 99090u), reverseBits(u_input.a.x))));
    let var_0 = vec4<i32>(-1i) * -abs(-(vec4<i32>(1i, -2147483647i, u_input.b.x, u_input.c) >> (vec4<u32>(global3.x, global3.x, 5323u, global3.x) % vec4<u32>(32u))));
    global0 = !(!select(select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), !global0.x), select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1()))))));
    let var_2 = -1060f;
    global4 = Struct_1(global3.x, firstLeadingBit(u_input.a));
    var var_3 = ~(vec3<u32>(global4.b.x, ~6770u, u_input.a.x) << (countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 35266u, 69000u), ~global4.b)) % vec3<u32>(32u)));
    let var_4 = global2[_wgslsmith_index_u32(global3.x, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_2(1f, u_input.c) >> (~_wgslsmith_sub_u32(var_3.x, 15299u) % 32u), u_input.a.x, 91669u), var_0 ^ var_0, ~(~(-5520i)), 4294967295u);
}

