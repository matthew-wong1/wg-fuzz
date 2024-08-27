struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4294967295u, 34328u, 44469u);

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(1780f, -469f, 937f));

var<private> global2: u32;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    global2 = global0.x;
    let var_0 = vec2<f32>(138f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(908f, 1658f))))));
    global1 = array<vec3<f32>, 1>();
    var var_1 = global0.x;
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, u_input.b) ^ _wgslsmith_add_u32(u_input.b, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(9553u, arg_0.x, u_input.c, 4294967295u) & vec4<u32>(6449u, arg_0.x, arg_0.x, 1u), vec4<u32>(global0.x, u_input.c, 34467u, global0.x))), firstLeadingBit(global0.x)), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(~0u, _wgslsmith_mult_u32(0u, 22224u))), ~(~arg_0.zz) >> (~_wgslsmith_mult_vec2_u32(arg_0.yy, arg_0.xx) % vec2<u32>(32u))), ~arg_0.zz);
    return min(_wgslsmith_mod_u32(~26804u, _wgslsmith_mod_u32(48704u, ~global0.x)), 1157u) | (_wgslsmith_div_u32(_wgslsmith_mod_u32(50741u, global0.x ^ global0.x), 0u) << (81904u % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> u32 {
    global0 = vec4<u32>(u_input.b << (firstLeadingBit(select(~0u, func_3(vec3<u32>(global0.x, u_input.b, u_input.b), false), !global3.x)) % 32u), arg_1, ~4294967295u, arg_1);
    let var_0 = Struct_2(select(global0.x, reverseBits(u_input.c), true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1345f, 993f), -1125f, 338f, -786f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -811f, -365f, 579f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(658f, 1270f, 869f, -640f) - vec4<f32>(-379f, 713f, 1478f, -762f))))))));
    let var_1 = any(select(vec2<bool>(global3.x != true, false), !global3.zy, select(global3.xy, select(global3.zw, global3.xw, vec2<bool>(true, false)), select(global3.yx, vec2<bool>(global3.x, true), global3.x)))) & !all(!(!vec2<bool>(global3.x, global3.x)));
    var var_2 = var_0;
    global2 = firstLeadingBit(~((min(var_0.a, 1u) ^ ~arg_1) & ~(~var_0.a)));
    return ~33207u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    global0 = ~(~abs(~select(vec4<u32>(global0.x, arg_0, 2311u, global0.x), vec4<u32>(4294967295u, 66351u, 23999u, arg_0), vec4<bool>(arg_2.x, global3.x, false, false))));
    global0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_0, arg_1.a, global0.x), ~arg_0, u_input.b, 44269u), select(~vec4<u32>(3102u, 25435u, u_input.b, 4294967295u), vec4<u32>(54845u, 4294967295u, 4294967295u, arg_0), !arg_2.x)), ~(~vec4<u32>(global0.x, global0.x, 0u, u_input.b)) & _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c, 0u), vec4<u32>(4294967295u, global0.x, arg_0, 0u)), vec4<u32>(0u, arg_0, 4294967295u, 5807u))), ~countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_1.a, u_input.b, global0.x), vec4<u32>(u_input.b, arg_1.a, 1u, arg_0))));
    global0 = ~((vec4<u32>(abs(94551u), arg_0, min(1u, arg_0), ~arg_0) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, arg_0, 0u), vec4<u32>(4294967295u, 6120u, arg_0, arg_0)) % vec4<u32>(32u))) ^ reverseBits(reverseBits(vec4<u32>(arg_0, 18327u, arg_1.a, 4294967295u)) ^ min(vec4<u32>(arg_0, 0u, arg_0, 37644u), vec4<u32>(u_input.c, arg_1.a, arg_1.a, arg_1.a))));
    global0 = _wgslsmith_div_vec4_u32(~max(~vec4<u32>(4294967295u, 0u, 1u, arg_0) >> (firstLeadingBit(vec4<u32>(arg_0, global0.x, global0.x, 24476u)) % vec4<u32>(32u)), vec4<u32>(func_2(u_input.d.xxx, 36907u), 17544u, 1u, 21878u)), abs(vec4<u32>(~_wgslsmith_mult_u32(0u, 31697u), global0.x, ~(~1u), _wgslsmith_clamp_u32(~arg_1.a, firstLeadingBit(arg_1.a), 0u))));
    global0 = vec4<u32>(global0.x, 10020u, reverseBits(~select(min(global0.x, 55672u), ~global0.x, any(arg_2))), ~1u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_add_u32(~(~select(global0.x, u_input.c, global3.x)), _wgslsmith_dot_vec2_u32(global0.zx, ~(~global0.yw))), firstLeadingBit(0u), ~global0.x, global0.x);
    global0 = vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(global0.zyx), vec3<u32>((4294967295u ^ global0.x) & ~30834u, _wgslsmith_sub_u32(u_input.c, u_input.b) >> (firstTrailingBit(4699u) % 32u), global0.x)), ~global0.x, 4294967295u, ~func_1(global0.x, Struct_2(min(u_input.b, u_input.c), vec4<f32>(-774f, -620f, -1996f, 1796f)), vec3<bool>(!global3.x, true, global3.x)));
    var var_0 = global3.zz;
    var var_1 = Struct_2(abs(_wgslsmith_div_u32(u_input.b, firstTrailingBit(abs(4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-874f, -216f, 505f, 628f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, -429f, -232f, -769f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_1.b)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, -302f, var_1.b.x, -1439f))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), _wgslsmith_f_op_f32(trunc(1037f)))), _wgslsmith_div_f32(437f, _wgslsmith_div_f32(-616f, var_1.b.x)), var_1.b.x, var_1.b.x))), ~(~(vec2<u32>(global0.x, 32823u) << (~global0.ww % vec2<u32>(32u)))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(min(-1i, u_input.d.x));
}

