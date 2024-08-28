struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1051f, -285f, 435f, -1841f), vec4<f32>(-257f, -1000f, 1893f, 293f), vec4<f32>(1000f, -1000f, 433f, 1625f), vec4<f32>(-375f, 142f, -1162f, -1539f), vec4<f32>(261f, -141f, -649f, -925f), vec4<f32>(-1000f, 1497f, -268f, 134f), vec4<f32>(2844f, -580f, 1026f, -1000f), vec4<f32>(869f, 1000f, -635f, -462f), vec4<f32>(-400f, 480f, -526f, 337f), vec4<f32>(1338f, -992f, -427f, 1215f), vec4<f32>(-1089f, -808f, -438f, -544f), vec4<f32>(-313f, 2020f, 280f, -260f), vec4<f32>(-1305f, -497f, -468f, 191f), vec4<f32>(659f, 788f, -604f, 1760f), vec4<f32>(-1043f, 224f, 1000f, 646f), vec4<f32>(815f, -1069f, -1000f, 1011f), vec4<f32>(227f, 2169f, 767f, 1153f));

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-971f, 100f)))) - vec2<f32>(_wgslsmith_f_op_f32(max(-366f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1792f))))));
    let var_1 = global2.a.xzz;
    global0 = array<vec4<f32>, 17>();
    return var_0.x;
}

fn func_2() -> vec2<bool> {
    global2 = Struct_2(global2.a, u_input.d);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(875f, -451f)), _wgslsmith_f_op_f32(971f - -727f))) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(915f, 682f)), -1364f)), false))));
    return global2.a.zz;
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    global1 = array<Struct_1, 21>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(293f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1257f, -857f)))))), 185f);
    global0 = array<vec4<f32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-333f))));
    let var_2 = !vec4<bool>(!(!all(arg_0.b.c.a.zzz)), true, select(16657u, ~4294967295u, global2.a.x && arg_0.b.a.x) < 59223u, arg_0.b.a.x);
    return arg_0.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(Struct_5(select(_wgslsmith_add_vec4_i32(~vec4<i32>(global2.b.x, 1i, global2.b.x, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(26262i, global2.b.x, u_input.a.x, u_input.b.x), vec4<i32>(global2.b.x, u_input.a.x, global2.b.x, u_input.a.x))), reverseBits(-vec4<i32>(u_input.b.x, -1i, 1i, u_input.d.x)), select(!vec4<bool>(false, true, global2.a.x, true), select(arg_0, arg_0, false), false | arg_0.x)), Struct_3(func_2(), firstLeadingBit(abs(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), Struct_2(arg_0, firstLeadingBit(global2.b)))));
    return global1[_wgslsmith_index_u32(1u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~firstLeadingBit(127206u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 40483u, 20596u, u_input.c) >> (vec4<u32>(59417u, 128806u, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(585u, u_input.c, u_input.c, u_input.c) << (vec4<u32>(0u, 1u, 12388u, 0u) % vec4<u32>(32u))), ~50131u, countOneBits(79979u) | u_input.c) ^ vec4<u32>(~0u, u_input.c, ~41267u, ~((6890u >> (u_input.c % 32u)) & u_input.c));
    var var_1 = func_1(global2.a);
    global2 = Struct_2(vec4<bool>(func_1(select(global2.a, global2.a, var_1.b.x < u_input.d.x)).a, global2.a.x, var_1.c.x, !var_1.c.x), vec2<i32>(15852i, 0i));
    var_0 = max(_wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(var_0.x, 105368u, 4294967295u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, var_0.x, 66546u), ~vec4<u32>(u_input.c, 1u, u_input.c, 0u))) ^ vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, 0u, var_0.x), _wgslsmith_mod_u32(var_0.x, 26413u)), ~45866u, select(var_0.x, 18472u, any(vec3<bool>(true, var_1.c.x, false))), firstTrailingBit(var_0.x)), vec4<u32>(~(~var_0.x) >> (0u % 32u), ~1u, ~(~var_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(49568u, 4294967295u)), ~vec2<u32>(45661u, u_input.c)), ~firstTrailingBit(vec2<u32>(1u, 4294967295u)))));
    var_0 = _wgslsmith_div_vec4_u32(select(vec4<u32>(~25984u | (4294967295u >> (u_input.c % 32u)), u_input.c, ~903u, var_0.x), min(vec4<u32>(reverseBits(0u), ~29288u, var_0.x ^ u_input.c, countOneBits(var_0.x)), ~vec4<u32>(var_0.x, var_0.x, 138150u, 4294967295u)), true), _wgslsmith_sub_vec4_u32(max(~vec4<u32>(u_input.c, 1u, 66081u, 7665u), ~vec4<u32>(1u, var_0.x, 0u, 0u) ^ ~vec4<u32>(u_input.c, 62115u, 4294967295u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(1u, var_0.x, var_0.x, 78074u) << (vec4<u32>(var_0.x, var_0.x, u_input.c, 34702u) % vec4<u32>(32u))) & vec4<u32>(func_4(Struct_5(vec4<i32>(u_input.d.x, global2.b.x, 1i, -4587i), Struct_3(vec2<bool>(false, false), vec4<u32>(var_0.x, 25993u, u_input.c, 39667u), Struct_2(vec4<bool>(true, true, false, true), vec2<i32>(0i, 2147483647i))))).b.x, 1u, u_input.c & var_0.x, abs(14576u))));
    var var_2 = Struct_4(vec2<f32>(1f, 1f), firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_0.x, 0u), var_0.ywy)) | var_0.yxz), (~(~u_input.c) != func_4(Struct_5(var_1.b, Struct_3(var_1.c.xz, vec4<u32>(var_0.x, 121019u, var_0.x, 4294967295u), Struct_2(global2.a, vec2<i32>(-63207i, -1i))))).b.x) & (!select(false, global2.a.x, false) & (global2.a.x || false)), i32(-1i) * -19408i, global0[_wgslsmith_index_u32(reverseBits(1u), 17u)]);
    var_1 = func_1(!global2.a);
    let var_3 = Struct_1(func_4(Struct_5(var_1.b, Struct_3(func_1(global2.a).c.xy, ~vec4<u32>(4294967295u, var_2.b.x, 0u, u_input.c), func_4(Struct_5(var_1.b, Struct_3(vec2<bool>(false, global2.a.x), vec4<u32>(4294967295u, u_input.c, u_input.c, 1u), Struct_2(global2.a, var_1.b.zx)))).c))).c.a.x, var_1.b, !(!vec3<bool>(true, false | var_1.a, var_1.c.x & global2.a.x)));
    var var_4 = -1309f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, global2.a.x)) + _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-var_2.e.x), -278f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.e.x - var_2.a.x))) * -985f), firstLeadingBit(var_2.b.x));
}

