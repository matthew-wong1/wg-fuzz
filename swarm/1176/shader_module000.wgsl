struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-1000f, 2341f, -2500f), vec3<f32>(803f, -408f, -524f), vec3<f32>(666f, -1795f, -2257f), vec3<f32>(270f, 1000f, -1324f), vec3<f32>(-1000f, -261f, -139f), vec3<f32>(-1071f, 575f, 1342f), vec3<f32>(-1906f, 743f, 876f), vec3<f32>(-1000f, -137f, 893f), vec3<f32>(-2876f, 900f, -371f));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(3901u, 81504u, 1u), 0u, vec3<u32>(55985u, 21863u, 28539u));

var<private> global2: array<i32, 10>;

var<private> global3: Struct_3 = Struct_3(vec3<bool>(true, true, true), 28390u);

var<private> global4: array<bool, 21> = array<bool, 21>(true, false, true, false, true, false, true, true, true, true, false, true, false, true, false, false, false, false, true, true, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(any(global3.a.yz), all(select(select(!vec4<bool>(false, global4[_wgslsmith_index_u32(80961u, 21u)], true, false), vec4<bool>(global3.a.x, true, global3.a.x, global4[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(false, true, false, false)), vec4<bool>(all(vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(4294967295u, 21u)])), false, !global4[_wgslsmith_index_u32(1u, 21u)], all(vec4<bool>(global4[_wgslsmith_index_u32(35410u, 21u)], false, global3.a.x, true))), !vec4<bool>(global3.a.x, global4[_wgslsmith_index_u32(global1.a.x, 21u)], true, global3.a.x))), !global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(global3.b, global1.a.x), reverseBits(firstTrailingBit(36741u))), 21u)], false & !any(select(global3.a.zz, vec2<bool>(false, true), global4[_wgslsmith_index_u32(global3.b, 21u)])));
    var var_1 = Struct_3(!(!select(select(var_0.wyy, global3.a, true), vec3<bool>(true, global3.a.x, true), false)), ~abs(global1.c.x));
    var var_2 = Struct_3(var_1.a, abs(1u));
    var_0 = select(vec4<bool>(any(vec3<bool>(!global4[_wgslsmith_index_u32(15096u, 21u)], any(vec4<bool>(false, var_2.a.x, false, false)), global4[_wgslsmith_index_u32(0u | var_1.b, 21u)])), true, true, true), vec4<bool>(any(!vec3<bool>(var_2.a.x, global4[_wgslsmith_index_u32(1u, 21u)], true)), true, !var_0.x || var_1.a.x, true), var_2.a.x != (u_input.b < 1i));
    var_1 = Struct_3(!vec3<bool>(!(13647i >= u_input.a.x), select(true, any(var_0.wy), true), any(var_1.a)), ~28361u);
    return ~4294967295u;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~global1.c, 4294967295u, global1.a);
    global0 = array<vec3<f32>, 9>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1520f - -1021f)) * 1000f))), vec4<u32>(global3.b, firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 4294967295u, 4294967295u, 35653u), vec4<u32>(var_0.a.x, 1u, var_0.c.x, 0u)))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(86053u, global1.a.x), 4294967295u), 0u), Struct_1(vec3<u32>(func_3(), 51024u, func_3()), 62623u ^ max(~global1.c.x, ~global1.b), abs(var_0.a) | global1.a), Struct_1(var_0.c, ~(~11068u) >> (countOneBits(96866u) % 32u), ~global1.c));
    global3 = Struct_3(vec3<bool>(true, false, false || global3.a.x), ~(~38910u));
    var var_2 = 1398i;
    return firstTrailingBit(select(reverseBits(1u) | ~(~var_0.c.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.a.x), var_1.d.c.yx), countOneBits(vec2<u32>(var_0.b, 14554u)) | max(var_1.d.c.zx, var_1.b.wz)), (global3.b >= var_1.c.b) & (var_1.a <= -230f)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<bool> {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, arg_1.x, global1.c.x) ^ global1.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global1.a.x, 5935u), vec3<u32>(29000u, 29806u, 89033u)))), firstLeadingBit(~12611u), min(arg_1.wzw, vec3<u32>(arg_1.x, 50150u, abs(func_3()))));
    var var_0 = !select(vec4<bool>(any(!arg_3.a), !any(vec4<bool>(false, false, arg_3.a.x, arg_2.x)), arg_3.a.x, true), vec4<bool>(true, any(vec3<bool>(true, global4[_wgslsmith_index_u32(arg_1.x, 21u)], arg_2.x)), false, global4[_wgslsmith_index_u32(~firstLeadingBit(global1.c.x), 21u)]), select(!vec4<bool>(false, false, false, arg_3.a.x), vec4<bool>(global3.a.x, global3.b >= 2498u, false, all(vec2<bool>(arg_3.a.x, arg_3.a.x))), vec4<bool>(true, arg_2.x, !arg_2.x, arg_3.a.x | false)));
    let var_1 = _wgslsmith_div_u32(4294967295u, (~(global3.b & 25758u) << (arg_1.x % 32u)) & 1u);
    global3 = arg_3;
    let var_2 = Struct_3(vec3<bool>(arg_3.a.x || true, !(!all(arg_2.zx)), var_0.x), var_1);
    return !arg_3.a.zy;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(1370f, abs(_wgslsmith_clamp_vec4_u32((vec4<u32>(global1.b, global3.b, 124871u, 42602u) | vec4<u32>(1u, global3.b, arg_2.a.x, arg_2.b)) >> ((vec4<u32>(25560u, 27242u, arg_1.b, 1u) ^ vec4<u32>(38959u, 36552u, 17215u, 0u)) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_3.b, arg_3.b, 54747u), vec4<u32>(1u, 22476u, arg_1.b, 1u)), vec4<u32>(_wgslsmith_mod_u32(arg_3.b, 0u), 113978u << (arg_2.c.x % 32u), ~arg_2.a.x, ~arg_3.b))), arg_2, Struct_1(~(arg_1.a >> (arg_2.c % vec3<u32>(32u))) ^ reverseBits(vec3<u32>(arg_2.c.x, arg_3.b, arg_3.b)), ~(~9102u) ^ arg_1.b, arg_1.a | ~vec3<u32>(global3.b, global3.b, 90744u)));
    let var_1 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1301f)), -514f, true)))), ~(~vec4<u32>(arg_2.c.x, arg_1.b, arg_1.a.x, 0u) & vec4<u32>(func_2(), global1.c.x, global1.a.x >> (39672u % 32u), _wgslsmith_sub_u32(1u, var_0.b.x))), select(select(vec3<bool>(arg_3.a.x, any(arg_3.a), all(global3.a.zx)), select(vec3<bool>(false, false, false), vec3<bool>(true, global3.a.x, global4[_wgslsmith_index_u32(arg_2.b, 21u)]), !arg_3.a), arg_3.a.x), global3.a, vec3<bool>(any(arg_3.a.zx), true, false)), arg_3);
    var var_2 = u_input.a;
    var var_3 = vec2<u32>(arg_1.b ^ (var_0.c.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(38590u, var_0.d.c.x, arg_3.b, 1u), var_0.b)), 28992u);
    global0 = array<vec3<f32>, 9>();
    return global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(~(~1u), ~(~11192u)), firstLeadingBit(arg_3.b)), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(select(!all(!global3.a), all(vec3<bool>(func_1(u_input.c.yz, Struct_1(vec3<u32>(global3.b, global1.c.x, 0u), global3.b, global1.a), Struct_1(global1.c, global3.b, vec3<u32>(72482u, global1.a.x, global1.a.x)), Struct_3(global3.a, 103153u)), !global4[_wgslsmith_index_u32(13815u, 21u)], any(vec3<bool>(false, global3.a.x, false)))), !global4[_wgslsmith_index_u32(1u, 21u)]), true);
    var var_1 = vec4<u32>(62870u, global1.c.x, 10113u, 4294967295u ^ ~(global1.c.x >> (_wgslsmith_clamp_u32(global3.b, 4294967295u, 4294967295u) % 32u)));
    let var_2 = Struct_3(global3.a, 68322u);
    var var_3 = select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(10722u, 0u, abs(var_2.b), _wgslsmith_mult_u32(1u, 1u)), select(~vec4<u32>(global1.a.x, 94772u, 0u, 1342u), vec4<u32>(52284u, 94371u, var_2.b, 26586u), !vec4<bool>(true, var_2.a.x, false, global3.a.x))), ~(vec4<u32>(1u, global1.c.x, 4294967295u, 63446u) >> (vec4<u32>(115072u, var_1.x, var_1.x, 4294967295u) % vec4<u32>(32u))), vec4<bool>(true, select(global2[_wgslsmith_index_u32(1u, 10u)] == u_input.b, any(vec4<bool>(global4[_wgslsmith_index_u32(1u, 21u)], var_2.a.x, global3.a.x, global4[_wgslsmith_index_u32(40197u, 21u)])), global3.a.x), all(vec3<bool>(global3.a.x, var_0.x, true)), var_0.x)), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_2.b, global3.b, var_1.x, var_1.x)), ~vec4<u32>(var_1.x, 4294967295u, ~0u, select(var_2.b, global3.b, false))), !(!vec4<bool>(!var_2.a.x, var_1.x == 7431u, !var_0.x, func_4(-154f, vec4<u32>(1u, 5554u, global3.b, var_1.x), vec3<bool>(global3.a.x, global4[_wgslsmith_index_u32(var_1.x, 21u)], var_2.a.x), var_2).x)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -651f), _wgslsmith_f_op_f32(f32(-1f) * -1603f))))), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.b, 83608u, var_1.x), vec4<u32>(var_3.x, 27897u, 0u, 4294967295u)), vec4<u32>(var_2.b, global1.a.x, var_2.b, 9093u)), vec4<u32>(~firstLeadingBit(var_1.x), global3.b, 7256u, ~global1.a.x << (global3.b % 32u))), Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(31229u, 4294967295u, var_2.b), select(max(vec3<u32>(var_1.x, var_3.x, 89683u), var_3.xxy), ~vec3<u32>(3872u, 0u, 1u), global4[_wgslsmith_index_u32(var_2.b, 21u)]), global1.c), ~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(var_1.x, var_1.x)), var_3.zyx), Struct_1(var_3.wyx, _wgslsmith_clamp_u32(_wgslsmith_div_u32(global3.b | 1u, var_2.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 5135u, 1u, 1u), vec4<u32>(var_2.b, 7106u, global1.a.x, 52114u)), 27340u), vec3<u32>(_wgslsmith_mod_u32(var_1.x, firstLeadingBit(0u)), var_2.b, var_2.b)));
    var var_5 = vec3<bool>(var_0.x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_4.a))))), var_4.b, var_2.a, var_2).x, var_4.a < _wgslsmith_f_op_f32(step(var_4.a, _wgslsmith_f_op_f32(trunc(-1045f)))));
    var var_6 = !var_2.a.xz;
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.a + var_4.a))), _wgslsmith_f_op_f32(f32(-1f) * -1630f), _wgslsmith_f_op_f32(abs(var_4.a)) >= var_4.a)), _wgslsmith_f_op_f32(sign(var_4.a)), -1267f, -219f);
    var_7 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_4.a, -918f, -414f));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b);
}

