struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 0i;

var<private> global2: array<u32, 31>;

var<private> global3: array<i32, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1917f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-542f, -846f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1220f - _wgslsmith_f_op_f32(min(632f, 1262f)))))), -1327f);
    var var_1 = Struct_2(Struct_1(~(global0.a >> (~global0.a % vec2<u32>(32u))), global0.b), var_0.x, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(min(1u, u_input.c), 31u)], 1u & u_input.a) | global0.a, !select(select(global0.b, global0.b, global0.b.x), vec2<bool>(false, false), all(global0.b))));
    let var_2 = vec3<f32>(-1107f, var_1.b, _wgslsmith_f_op_f32(min(var_1.b, -1145f)));
    var var_3 = -2147483647i;
    var var_4 = Struct_2(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), Struct_1(global0.a, vec2<bool>((23914u >> (arg_0 % 32u)) == ~4294967295u, any(select(vec3<bool>(var_1.c.b.x, false, var_1.c.b.x), vec3<bool>(false, true, var_1.c.b.x), false)))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0.xy, vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_0.x, var_2.x)))))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, 443f)) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_u32(global0.a.x, ~global0.a.x)))), Struct_2(Struct_1(abs(global0.a), arg_1.zz), -495f, Struct_1(vec2<u32>(1u << (u_input.c % 32u), ~global0.a.x), select(vec2<bool>(arg_1.x, global0.b.x), !global0.b, global0.b.x))), Struct_2(Struct_1(~_wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(global0.a.x, u_input.a)), select(global0.b, select(arg_1.zy, vec2<bool>(true, global0.b.x), vec2<bool>(arg_1.x, arg_1.x)), any(arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -767f))))), Struct_1(~global0.a, arg_1.yx)), Struct_2(Struct_1(~(~global0.a), vec2<bool>(true, all(arg_1))), 796f, Struct_1(vec2<u32>(global0.a.x, 33795u) | ~global0.a, select(vec2<bool>(global0.b.x, global0.b.x), arg_1.xx, arg_1.x))), Struct_1(abs(_wgslsmith_sub_vec2_u32(global0.a, ~global0.a)), arg_1.yy));
    global0 = var_0.c.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(-514f)), -2493f, _wgslsmith_f_op_f32(max(633f, var_0.c.b)), _wgslsmith_f_op_f32(sign(-108f))))), vec4<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, -626f), _wgslsmith_f_op_f32(round(1f)), var_0.b.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.b, 1000f, 727f, 294f), vec4<f32>(var_0.c.b, var_0.b.b, var_0.d.b, -164f), vec4<bool>(arg_1.x, true, true, true)))))));
    var var_2 = var_0;
    let var_3 = -(25989i >> (select(abs(u_input.c), 4294967295u, var_1.x == -782f) % 32u)) >> ((abs(~_wgslsmith_mult_u32(u_input.b, global0.a.x)) | _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(68020u, var_2.d.c.a.x)), var_2.d.c.a << (vec2<u32>(10415u, 3045u) % vec2<u32>(32u))))) % 32u);
    return _wgslsmith_f_op_f32(-786f * var_1.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(-1014f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.b.b * -661f))));
    let var_1 = Struct_2(arg_3.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(0i, vec3<bool>(arg_3.e.b.x, arg_3.c.c.b.x, true))), arg_3.c.b))))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(arg_3.c.c.a.x, _wgslsmith_add_u32(0u, 4294967295u)), 57594u), select(arg_3.e.b, global0.b, arg_2 <= arg_2)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(arg_3.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, var_0))))))), vec2<f32>(-1915f, _wgslsmith_f_op_f32(ceil(-855f))))), Struct_2(arg_3.b.a, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-var_0)), Struct_1(~(~vec2<u32>(97031u, 0u)), global0.b)), var_1, var_1, Struct_1(~_wgslsmith_add_vec2_u32(arg_3.e.a, arg_3.d.a.a >> (global0.a % vec2<u32>(32u))), global0.b));
    global2 = array<u32, 31>();
    let var_3 = arg_3;
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~_wgslsmith_mod_u32(abs(global2[_wgslsmith_index_u32(global0.a.x, 31u)]), 1u), reverseBits(1u)), func_1(vec4<u32>(4294967295u, ~(~36394u), _wgslsmith_clamp_u32(51869u << (global0.a.x % 32u), 77412u, ~49488u), 1u), vec3<f32>(-272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f - arg_2.x) - 560f), _wgslsmith_f_op_f32(f32(-1f) * -1472f)), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(abs(firstTrailingBit(4294967295u)), 20u)], _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, global3[_wgslsmith_index_u32(1u, 20u)]), i32(-1i) * -20388i)), func_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 50659u, global0.a.x), vec3<u32>(11846u, global2[_wgslsmith_index_u32(5862u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)])), 4294967295u, firstLeadingBit(1u), 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 1249f, arg_2.x) - vec3<f32>(2182f, arg_2.x, 1334f))), arg_1, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-756f, -237f) - vec2<f32>(804f, arg_0.a.x)), func_1(vec4<u32>(90480u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.d.a.a.x, 31u)], 31u)], 58533u), vec3<f32>(-462f, arg_0.a.x, 867f), 2147483647i, arg_0).b, func_1(vec4<u32>(4294967295u, u_input.b, 97327u, 4294967295u), vec3<f32>(arg_2.x, 1121f, 542f), arg_1, Struct_3(arg_2, arg_0.d, arg_0.d, arg_0.b, Struct_1(global0.a, global0.b))).b, Struct_2(Struct_1(vec2<u32>(19136u, 25232u), vec2<bool>(arg_0.e.b.x, global0.b.x)), arg_2.x, arg_0.c.a), arg_0.e))).d.c.b);
    global3 = array<i32, 20>();
    global1 = _wgslsmith_mult_i32(countOneBits(-min(global3[_wgslsmith_index_u32(20713u, 20u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 41013u), vec3<u32>(4294967295u, var_0.a.x, global0.a.x)), 20u)])), _wgslsmith_mod_i32(~(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 20u)], arg_1, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 20u)]), vec3<i32>(-11303i, global3[_wgslsmith_index_u32(global0.a.x, 20u)], arg_1)) ^ -global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.e.a.x, 31u)], 20u)]), global3[_wgslsmith_index_u32(min(_wgslsmith_add_u32(var_0.a.x, u_input.a) >> (_wgslsmith_mod_u32(109075u, global0.a.x) % 32u), ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.x, 14749u), 31u)]), 20u)]));
    var var_1 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.c.c.a.x, _wgslsmith_mod_u32(0u, arg_0.c.c.a.x >> (4294967295u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 0u, 0u, var_0.a.x), vec4<u32>(4294967295u, global0.a.x, u_input.a, 4294967295u)) << (arg_0.d.a.a.x % 32u), _wgslsmith_div_u32(var_0.a.x, 1u) >> (min(var_0.a.x, global0.a.x) % 32u))), ~firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, arg_0.c.c.a.x, var_0.a.x), vec4<u32>(var_0.a.x, u_input.b, u_input.a, 0u))));
    global0 = func_1(~(~(~(~vec4<u32>(var_0.a.x, global0.a.x, 352u, 1u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1110f, arg_2.x))), 665f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 1267f) * arg_0.b.b)), vec3<f32>(-1224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(502f)) * _wgslsmith_f_op_f32(arg_2.x * 137f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(-1i, vec3<bool>(arg_0.e.b.x, true, false))))))), -abs(i32(-1i) * -60667i), arg_0).d.a;
    return arg_0.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = arg_0.b.b;
    global3 = array<i32, 20>();
    var var_1 = false;
    let var_2 = arg_1.c.a.x;
    var var_3 = func_1(abs(reverseBits(~vec4<u32>(1u, arg_0.d.c.a.x, arg_0.c.c.a.x, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, 1382f, arg_0.d.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-480f, -824f, 524f) - vec3<f32>(1370f, arg_1.b, 982f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, arg_0.c.b, arg_2.b) * vec3<f32>(295f, 320f, 945f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, 889f, 1000f), vec3<f32>(909f, -566f, arg_2.b)))))), (~arg_3 ^ min(global3[_wgslsmith_index_u32(1u, 20u)], arg_3 ^ -2147483647i)) & ~(-2147483647i), func_1(~countOneBits(~vec4<u32>(global2[_wgslsmith_index_u32(var_2, 31u)], arg_2.a.a.x, 12798u, 67863u)), vec3<f32>(880f, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(318f - -1301f)))), _wgslsmith_mod_i32(~(~arg_3), 1i), arg_0)).c.c;
    return Struct_2(arg_2.a, arg_1.b, Struct_1(var_3.a, vec2<bool>(all(select(vec2<bool>(global0.b.x, true), vec2<bool>(arg_2.a.b.x, false), true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(865f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(439f + _wgslsmith_f_op_f32(sign(-624f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1844f - 501f))), _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-602f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(781f, -1860f)) - _wgslsmith_f_op_f32(f32(-1f) * -1368f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-253f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -451f)))), _wgslsmith_f_op_f32(f32(-1f) * -810f))));
    let var_1 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.wy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1174f, var_0.x)) * var_0.xy)), Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 5050u), vec2<u32>(1u, 1u)), !global0.b), -301f, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(57448u, 31u)], 39332u), global0.b)), Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(global0.a, global0.a, vec2<u32>(48413u, 1u)), vec2<bool>(true, global0.b.x)), _wgslsmith_f_op_f32(-666f + -1836f), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 31u)], global0.a.x), vec2<u32>(1u, 4294967295u)), vec2<bool>(global0.b.x, false))), Struct_2(func_4(func_1(vec4<u32>(global2[_wgslsmith_index_u32(global0.a.x, 31u)], 62762u, global2[_wgslsmith_index_u32(u_input.c, 31u)], 74910u), vec3<f32>(var_0.x, var_0.x, 1272f), global3[_wgslsmith_index_u32(2779u, 20u)], Struct_3(var_0.yy, Struct_2(Struct_1(vec2<u32>(0u, global0.a.x), global0.b), 153f, Struct_1(vec2<u32>(50408u, global0.a.x), global0.b)), Struct_2(Struct_1(global0.a, vec2<bool>(global0.b.x, false)), -938f, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 1u), vec2<bool>(false, false))), Struct_2(Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x)), -766f, Struct_1(vec2<u32>(global0.a.x, 48092u), vec2<bool>(false, true))), Struct_1(global0.a, global0.b))), ~global3[_wgslsmith_index_u32(4294967295u, 20u)], var_0.xw), _wgslsmith_f_op_f32(sign(-676f)), func_1(countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(43121u, 31u)], 40110u, u_input.b, 5843u)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1734f, -639f), var_0.zzy), firstTrailingBit(global3[_wgslsmith_index_u32(65912u, 20u)]), func_1(vec4<u32>(11138u, 298u, 37883u, 0u), vec3<f32>(2013f, var_0.x, var_0.x), global3[_wgslsmith_index_u32(global0.a.x, 20u)], Struct_3(var_0.ww, Struct_2(Struct_1(vec2<u32>(u_input.b, 0u), global0.b), var_0.x, Struct_1(global0.a, global0.b)), Struct_2(Struct_1(vec2<u32>(18093u, 108453u), vec2<bool>(true, true)), -413f, Struct_1(vec2<u32>(u_input.b, global0.a.x), global0.b)), Struct_2(Struct_1(global0.a, global0.b), var_0.x, Struct_1(vec2<u32>(u_input.c, 28761u), vec2<bool>(global0.b.x, true))), Struct_1(global0.a, vec2<bool>(global0.b.x, true))))).d.c), func_4(Struct_3(vec2<f32>(-782f, var_0.x), Struct_2(Struct_1(vec2<u32>(u_input.c, global0.a.x), vec2<bool>(global0.b.x, global0.b.x)), var_0.x, Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x))), func_1(vec4<u32>(35150u, 11709u, 4294967295u, global2[_wgslsmith_index_u32(global0.a.x, 31u)]), vec3<f32>(214f, var_0.x, -2356f), global3[_wgslsmith_index_u32(0u, 20u)], Struct_3(vec2<f32>(var_0.x, 510f), Struct_2(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 0u), global0.b), var_0.x, Struct_1(vec2<u32>(679u, global0.a.x), global0.b)), Struct_2(Struct_1(global0.a, global0.b), var_0.x, Struct_1(vec2<u32>(23549u, 0u), vec2<bool>(global0.b.x, false))), Struct_2(Struct_1(vec2<u32>(global0.a.x, 5045u), vec2<bool>(true, global0.b.x)), -1134f, Struct_1(global0.a, vec2<bool>(true, global0.b.x))), Struct_1(global0.a, vec2<bool>(true, global0.b.x)))).d, func_1(vec4<u32>(74188u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 31u)], 4294967295u), var_0.wxy, 1i, Struct_3(vec2<f32>(-482f, var_0.x), Struct_2(Struct_1(vec2<u32>(42398u, 17976u), global0.b), -1288f, Struct_1(vec2<u32>(56085u, 4294967295u), vec2<bool>(global0.b.x, false))), Struct_2(Struct_1(global0.a, global0.b), 328f, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19371u, 31u)], 31u)], 31u)], 56594u), global0.b)), Struct_2(Struct_1(vec2<u32>(31613u, 2255u), global0.b), var_0.x, Struct_1(global0.a, vec2<bool>(false, false))), Struct_1(global0.a, global0.b))).c, func_4(Struct_3(vec2<f32>(390f, var_0.x), Struct_2(Struct_1(vec2<u32>(10471u, global0.a.x), vec2<bool>(true, global0.b.x)), var_0.x, Struct_1(vec2<u32>(4294967295u, global0.a.x), global0.b)), Struct_2(Struct_1(vec2<u32>(global0.a.x, global0.a.x), vec2<bool>(true, global0.b.x)), var_0.x, Struct_1(global0.a, global0.b)), Struct_2(Struct_1(global0.a, vec2<bool>(global0.b.x, true)), var_0.x, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(0u, 31u)], global0.a.x), global0.b)), Struct_1(global0.a, vec2<bool>(true, global0.b.x))), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 20u)], vec2<f32>(1935f, var_0.x))), _wgslsmith_mult_i32(~(-1088i), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -2426f), vec2<f32>(var_0.x, -468f))))), Struct_2(func_1(vec4<u32>(25120u, select(1522u, global0.a.x, global0.b.x), 64443u, max(11980u, global2[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, -540f))), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, global0.a.x, 0u), 20u)], Struct_3(vec2<f32>(-1336f, 249f), Struct_2(Struct_1(vec2<u32>(u_input.a, 1u), global0.b), -1000f, Struct_1(global0.a, global0.b)), Struct_2(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(120763u, 31u)], 40173u), vec2<bool>(false, true)), var_0.x, Struct_1(global0.a, global0.b)), func_1(vec4<u32>(global0.a.x, 0u, 55816u, 57847u), vec3<f32>(172f, var_0.x, var_0.x), global3[_wgslsmith_index_u32(global0.a.x, 20u)], Struct_3(vec2<f32>(1736f, 606f), Struct_2(Struct_1(global0.a, global0.b), var_0.x, Struct_1(global0.a, vec2<bool>(global0.b.x, false))), Struct_2(Struct_1(global0.a, global0.b), -1011f, Struct_1(global0.a, global0.b)), Struct_2(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global0.a.x, 31u)], 0u), global0.b), var_0.x, Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x))), Struct_1(global0.a, vec2<bool>(true, global0.b.x)))).b, Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x)))).b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(576f, _wgslsmith_f_op_f32(f32(-1f) * -1415f), true)) * _wgslsmith_f_op_f32(-var_0.x)), Struct_1(~global0.a, func_4(func_1(vec4<u32>(0u, global0.a.x, 91762u, 0u), var_0.xww, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49823u, 31u)], 31u)], 20u)], Struct_3(vec2<f32>(-550f, var_0.x), Struct_2(Struct_1(global0.a, vec2<bool>(true, global0.b.x)), 728f, Struct_1(vec2<u32>(u_input.c, u_input.c), global0.b)), Struct_2(Struct_1(global0.a, global0.b), var_0.x, Struct_1(vec2<u32>(103125u, 48475u), vec2<bool>(true, false))), Struct_2(Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x)), -516f, Struct_1(global0.a, vec2<bool>(global0.b.x, true))), Struct_1(vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]), vec2<bool>(global0.b.x, false)))), global3[_wgslsmith_index_u32(11842u, 20u)] << (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1155f, var_0.x))).b)), func_1(~(~vec4<u32>(3637u, 4294967295u, 1u, u_input.a)) ^ min(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(53635u, 31u)], global2[_wgslsmith_index_u32(66106u, 31u)], u_input.c), ~vec4<u32>(1u, 1u, u_input.b, 0u)), _wgslsmith_f_op_vec3_f32(var_0.yyw * _wgslsmith_f_op_vec3_f32(min(var_0.xxx, _wgslsmith_f_op_vec3_f32(floor(var_0.xxz))))), -max(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.x, global0.a.x, global2[_wgslsmith_index_u32(u_input.b, 31u)]), 31u)], 20u)], 1i), func_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4755u, u_input.a, global0.a.x), vec4<u32>(global0.a.x, 0u, global2[_wgslsmith_index_u32(4294967295u, 31u)], 50280u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(856f, var_0.x, var_0.x) - var_0.wyy), _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 20u)], global3[_wgslsmith_index_u32(u_input.c, 20u)]) << (global0.a % vec2<u32>(32u)), vec2<i32>(global3[_wgslsmith_index_u32(19622u, 20u)], -28549i)), func_1(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(global0.a.x, 31u)], 6095u, 53186u, 14502u)), var_0.xwz, abs(global3[_wgslsmith_index_u32(global0.a.x, 20u)]), Struct_3(var_0.yx, Struct_2(Struct_1(global0.a, global0.b), 985f, Struct_1(global0.a, vec2<bool>(true, global0.b.x))), Struct_2(Struct_1(vec2<u32>(0u, global0.a.x), global0.b), -1589f, Struct_1(vec2<u32>(6210u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 31u)], 31u)], 31u)]), vec2<bool>(global0.b.x, global0.b.x))), Struct_2(Struct_1(global0.a, vec2<bool>(global0.b.x, true)), var_0.x, Struct_1(global0.a, global0.b)), Struct_1(global0.a, vec2<bool>(global0.b.x, false)))))).c, -2147483647i);
    var var_2 = var_1;
    global2 = array<u32, 31>();
    let var_3 = var_0.www;
    let var_4 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.wz)), Struct_2(var_2.c, var_3.x, Struct_1(vec2<u32>(64535u, global2[_wgslsmith_index_u32(u_input.b, 31u)]), !var_1.a.b)), var_1, var_1, Struct_1(vec2<u32>(var_1.c.a.x, 26314u) << ((var_2.a.a & vec2<u32>(57595u, 1u)) % vec2<u32>(32u)), vec2<bool>(true, true))), Struct_2(var_2.c, _wgslsmith_f_op_f32(-var_2.b), Struct_1(select(var_1.c.a, vec2<u32>(u_input.a, u_input.b), !var_2.a.b.x), vec2<bool>(true, true))), func_1(~vec4<u32>(u_input.b, ~u_input.a, ~1u, select(u_input.a, var_1.c.a.x, true)), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -574f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) + _wgslsmith_f_op_f32(var_0.x - var_3.x))), global3[_wgslsmith_index_u32(abs(~var_2.c.a.x) | _wgslsmith_clamp_u32(var_2.c.a.x ^ var_2.a.a.x, u_input.c << (17986u % 32u), _wgslsmith_mod_u32(4294967295u, 30371u)), 20u)], Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 658f), vec2<f32>(var_1.b, var_2.b), global0.b.x))), Struct_2(var_1.c, 1229f, Struct_1(var_2.c.a, var_2.a.b)), func_5(func_1(vec4<u32>(var_1.a.a.x, var_2.a.a.x, u_input.c, var_2.c.a.x), var_0.xwx, global3[_wgslsmith_index_u32(1u, 20u)], Struct_3(vec2<f32>(621f, var_1.b), var_1, var_1, var_1, Struct_1(var_2.c.a, var_2.c.b))), func_5(Struct_3(vec2<f32>(-303f, -829f), Struct_2(var_1.c, 1000f, Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(global0.b.x, true))), Struct_2(var_1.a, var_3.x, var_1.a), Struct_2(var_1.c, var_3.x, Struct_1(vec2<u32>(4294967295u, u_input.c), vec2<bool>(false, var_2.a.b.x))), var_2.c), var_1, Struct_2(Struct_1(global0.a, vec2<bool>(false, var_1.c.b.x)), -1877f, Struct_1(var_1.c.a, var_2.c.b)), global3[_wgslsmith_index_u32(0u, 20u)]), Struct_2(Struct_1(var_1.a.a, global0.b), 352f, var_1.c), -global3[_wgslsmith_index_u32(0u, 20u)]), func_5(Struct_3(var_0.ww, Struct_2(var_1.c, var_0.x, var_1.a), Struct_2(Struct_1(vec2<u32>(0u, global0.a.x), vec2<bool>(false, var_1.a.b.x)), var_1.b, var_2.c), var_1, var_2.c), var_1, var_1, global3[_wgslsmith_index_u32(~1u, 20u)]), Struct_1(global0.a, vec2<bool>(true, var_2.a.b.x)))).c, firstLeadingBit(_wgslsmith_add_i32(-5192i, -24295i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, global3[_wgslsmith_index_u32(var_2.a.a.x, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], -4084i | (min(2147483647i, global3[_wgslsmith_index_u32(var_1.a.a.x, 20u)]) | _wgslsmith_div_i32(-1i, -1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_1.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -931f) * var_3.zz))))));
}

