struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-384f, 1335f, 1000f, 1094f, 927f, 551f);

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(vec2<bool>(true, false)), vec2<u32>(47557u, 0u)), -822f, vec2<u32>(0u, 41195u));

var<private> global2: array<i32, 31> = array<i32, 31>(2559i, -53102i, 39167i, 0i, 38129i, 15561i, 12436i, -18706i, i32(-2147483648), i32(-2147483648), -15252i, 30719i, 3127i, 0i, -1i, -18129i, 1i, 2147483647i, 0i, -1i, -1i, 28100i, 23839i, 29592i, 23228i, i32(-2147483648), 12654i, -1820i, 0i, -1i, i32(-2147483648));

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_5(select(-2147483647i, u_input.c.x, -208f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.a.x - arg_2.b.a.x))), global3[_wgslsmith_index_u32(5349u, 32u)], arg_1.b);
    var var_1 = ~global1.c.x;
    let var_2 = global1.a;
    var_1 = _wgslsmith_div_u32(0u, select(1u, ~(_wgslsmith_mod_u32(4294967295u, global1.c.x) << (var_2.b.x % 32u)), !var_0.c.a.x));
    var_1 = var_2.b.x;
    return Struct_1(select(global1.a.a.a, !vec2<bool>(true, all(vec3<bool>(true, false, false))), !arg_1.b.a.x));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -567f;
    global0 = array<f32, 6>();
    global1 = Struct_4(Struct_3(Struct_1(func_2(global1.a, global3[_wgslsmith_index_u32(~u_input.b.x, 32u)], Struct_5(6775i, global3[_wgslsmith_index_u32(110853u, 32u)], Struct_1(vec2<bool>(true, false))), global1.a.b.x << (arg_2 % 32u)).a), _wgslsmith_sub_vec2_u32(firstTrailingBit(min(global1.a.b, vec2<u32>(arg_2, u_input.b.x))), ~u_input.b.yx)), global1.b, ~(~(select(global1.a.b, u_input.b.xz, global1.a.a.a.x) << (_wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(arg_0, global1.c.x)) % vec2<u32>(32u)))));
    let var_1 = global1.a;
    var var_2 = ~_wgslsmith_mod_u32(~44076u, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(14761u), 1u), reverseBits(_wgslsmith_mod_vec2_u32(global1.c, global1.a.b))));
    return global1.a.a;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_0.c.a.x;
    let var_1 = vec4<u32>(2267u, (u_input.a ^ _wgslsmith_clamp_u32(global1.c.x, 99210u, _wgslsmith_dot_vec2_u32(vec2<u32>(49971u, 4294967295u), global1.a.b))) << (~u_input.a % 32u), 1u << (select(_wgslsmith_div_u32(u_input.b.x, max(global1.a.b.x, global1.c.x)), 1u, global1.a.a.a.x) % 32u), global1.a.b.x ^ _wgslsmith_sub_u32(~global1.c.x, firstLeadingBit(global1.a.b.x)));
    global1 = Struct_4(global1.a, _wgslsmith_f_op_f32(abs(-981f)), global1.c);
    global1 = Struct_4(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.x, arg_0.b.a.x)), ~u_input.b.xx);
    var var_2 = ~96709u;
    return vec2<bool>(true, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~firstLeadingBit(global1.a.b.x), 6u)], _wgslsmith_f_op_f32(max(718f, _wgslsmith_f_op_f32(arg_0.b.a.x * global1.b))))) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)] - 263f));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: i32) -> vec2<bool> {
    global3 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -159f) * vec2<f32>(global1.b, global0[_wgslsmith_index_u32(u_input.a, 6u)])))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_f32(arg_1 + 916f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -1000f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1386f, 314f), vec2<f32>(274f, 885f))))))));
    global2 = array<i32, 31>();
    var var_1 = true;
    let var_2 = u_input.c;
    return func_4(Struct_5(select(u_input.c.x, arg_2 >> (65817u % 32u), global1.a.a.a.x), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1857f, global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1.c.x, 6u)], -1000f, global1.b))), func_3(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(-var_0.x), 29119u, func_2(global1.a, global3[_wgslsmith_index_u32(global1.c.x, 32u)], Struct_5(arg_2, Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -723f, arg_1), global1.a.a, arg_0.x), Struct_1(vec2<bool>(global1.a.a.a.x, arg_0.x))), 4294967295u)), arg_0.x), func_2(global1.a, global3[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.b.x)), 32u)], Struct_5(arg_2, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.c.x, 15513u), 32u)], func_3(u_input.b.x, 159f, u_input.b.x, Struct_1(vec2<bool>(global1.a.a.a.x, true)))), 50624u)), true, Struct_5(select(_wgslsmith_mod_i32(arg_2, arg_2), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), ~39015i), true), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(7268u, _wgslsmith_div_u32(u_input.b.x, 4294967295u)), 32u)], func_3(u_input.b.x, var_0.x, _wgslsmith_mod_u32(firstLeadingBit(global1.a.b.x), _wgslsmith_mult_u32(3407u, 1u)), Struct_1(vec2<bool>(true, global1.a.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-561f - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 6u)], 641f))) * global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 31u)], i32(-1i) * -_wgslsmith_div_i32(-2147483647i, 2902i)), ~28373i);
    let var_1 = Struct_4(Struct_3(Struct_1(select(func_1(global1.a.a.a, global1.b, var_0.x, -12890i), !vec2<bool>(global1.a.a.a.x, false), func_3(u_input.a, global1.b, u_input.b.x, global1.a.a).a)), _wgslsmith_clamp_vec2_u32(u_input.b.zx, vec2<u32>(select(global1.c.x, 4294967295u, global1.a.a.a.x), global1.a.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(global1.c.x, 4294967295u), u_input.b.xy) >> (u_input.b.zy % vec2<u32>(32u)))), -340f, ~u_input.b.xy);
    global2 = array<i32, 31>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~56633u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, global0[_wgslsmith_index_u32(1u, 6u)])) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, 1568f), vec2<f32>(618f, var_2.b))))))), _wgslsmith_f_op_f32(f32(-1f) * -924f), vec2<u32>(~_wgslsmith_add_u32(var_1.c.x, 47502u), _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(1u, 4294967295u, global1.a.b.x) ^ ~vec3<u32>(0u, 32752u, u_input.a))));
}

