struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1655f))))));
    let var_1 = Struct_3(arg_1.x, Struct_1(vec4<u32>(4294967295u >> (global0.a.x % 32u), global0.a.x, ~global0.a.x, ~9582u) & _wgslsmith_sub_vec4_u32(~vec4<u32>(434u, global0.a.x, 10730u, 1u), _wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(13161u, 20202u, global0.a.x, global0.a.x), global0.a)), abs(abs(-1i)), firstTrailingBit(abs(select(vec3<i32>(u_input.a, global0.b, global0.b), vec3<i32>(global1[_wgslsmith_index_u32(78439u, 17u)], -2147483647i, -5628i), arg_1.yyz)))), arg_1, Struct_2(Struct_1(~_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(102199u, global0.a.x, global0.a.x, 1u)), u_input.a, vec3<i32>(countOneBits(2147483647i), -10849i, ~57478i)), vec3<i32>(global0.c.x, i32(-1i) * -73i, _wgslsmith_div_i32(~(-8615i), countOneBits(44526i))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 4294967295u, global0.a.x), select(vec4<u32>(23947u, 1u, 110346u, global0.a.x), vec4<u32>(global0.a.x, 1u, global0.a.x, global0.a.x), arg_1)), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~4294967295u, 17u)], global0.b, u_input.a ^ 24327i), -(u_input.c << (global0.a.xwy % vec3<u32>(32u))))));
    return global0.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_2 {
    global0 = Struct_1(global0.a, u_input.a, _wgslsmith_add_vec3_i32(min(global0.c ^ vec3<i32>(39243i, u_input.c.x, global1[_wgslsmith_index_u32(global0.a.x, 17u)]), _wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(global1[_wgslsmith_index_u32(global0.a.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], 1i))), u_input.c) | ~(arg_0 >> ((vec3<u32>(global0.a.x, global0.a.x, global0.a.x) | vec3<u32>(global0.a.x, global0.a.x, 0u)) % vec3<u32>(32u))));
    global1 = array<i32, 17>();
    var var_0 = false;
    let var_1 = min(countOneBits(select(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 39844i, -1i, global1[_wgslsmith_index_u32(global0.a.x, 17u)]), reverseBits(vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.b))), firstLeadingBit(firstTrailingBit(vec4<i32>(-1i, arg_0.x, 7209i, u_input.c.x))), true)), vec4<i32>(func_3(vec2<bool>(true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), all(vec3<bool>(false, false, false))), 1i, max(_wgslsmith_dot_vec2_i32(-u_input.c.yx, ~arg_0.zy), arg_0.x), arg_0.x));
    var var_2 = _wgslsmith_add_i32(max(global0.c.x, -2147483647i), select(countOneBits(abs(u_input.a)), ~(-1i), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))));
    return Struct_2(Struct_1(firstLeadingBit(countOneBits(min(global0.a, vec4<u32>(global0.a.x, global0.a.x, 1u, 91404u)))), arg_0.x, -(~vec3<i32>(var_1.x, 15188i, global0.c.x)) << (global0.a.zww % vec3<u32>(32u))), u_input.c, Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a.x, 0u, global0.a.x, 1u), ~global0.a), arg_0.x, var_1.zxx));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(1859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-972f))))))));
    var var_1 = Struct_4(func_2(-u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -362f, 1000f, -1731f), vec4<f32>(1395f, -1429f, 1268f, -296f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, -505f, -1313f, 748f))))), ~(global0.a.yzz | func_2(~global0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 1330f, -250f))).c.a.yxw), arg_0.x, firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(95658u, 17u)], _wgslsmith_mult_i32(2147483647i, 1i), u_input.c.x, 0i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(43129u, 17u)], 4331i, global1[_wgslsmith_index_u32(1u, 17u)], -32498i), abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)], -6128i, u_input.b, u_input.a)))));
    global0 = var_1.a.c;
    var var_2 = Struct_4(var_1.a, (_wgslsmith_sub_vec3_u32(var_1.a.a.a.www, firstLeadingBit(var_1.b)) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1569u, var_1.b.x), global0.a.zzz) >> (vec3<u32>(var_1.a.a.a.x, global0.a.x, var_1.b.x) % vec3<u32>(32u)))) >> (~max(global0.a.wyw, global0.a.xxx) % vec3<u32>(32u)), all(arg_0), vec4<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 17u)], 53122i, -u_input.a, ~_wgslsmith_add_i32(0i, global0.c.x)));
    let var_3 = firstLeadingBit(~(i32(-1i) * -var_2.a.c.c.x));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global1[_wgslsmith_index_u32(func_1(vec2<bool>(false, true)), 17u)];
    var var_1 = firstLeadingBit(~(global0.a.x & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.a.xy, global0.a.xx), func_1(vec2<bool>(true, false)))));
    var_1 = 4294967295u;
    let var_2 = Struct_4(Struct_2(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(733i, var_0, 2147483647i), global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, 1450f, -735f, -689f)))).a, -max(-u_input.c, firstLeadingBit(vec3<i32>(-15057i, var_0, global0.b))), Struct_1(global0.a, global0.b, select(u_input.c, max(global0.c, vec3<i32>(23164i, global0.c.x, var_0)), vec3<bool>(false, true, false)))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(global0.a.x, global0.a.x, 36144u)) | ~(~global0.a.yyz), abs(max(~vec3<u32>(global0.a.x, 4294967295u, 0u), global0.a.xzx)), _wgslsmith_div_vec3_u32(global0.a.zzx, abs(global0.a.wyy))), false, ~(-_wgslsmith_sub_vec4_i32(abs(vec4<i32>(global1[_wgslsmith_index_u32(global0.a.x, 17u)], global1[_wgslsmith_index_u32(global0.a.x, 17u)], -2147483647i, 4661i)), firstLeadingBit(vec4<i32>(-1i, var_0, -1i, 11684i)))));
    var var_3 = vec4<f32>(123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f) - -360f))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f * -478f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1537f * -2213f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-221f)), _wgslsmith_f_op_f32(max(2569f, _wgslsmith_f_op_f32(round(-125f)))), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 1151f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x + var_3.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -483f), var_3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i ^ u_input.c.x, var_2.a.a.b & -21143i, 2147483647i, 2147483647i), (var_2.d ^ var_2.d) & vec4<i32>(~(-1i), 2147483647i, func_3(vec2<bool>(var_2.c, var_2.c), vec4<bool>(true, true, var_2.c, var_2.c), var_2.c), u_input.c.x), _wgslsmith_add_vec4_i32(~vec4<i32>(global0.b, 0i, u_input.a, 0i), vec4<i32>(var_2.a.b.x, 1i, global0.b, 41324i)) ^ ~var_2.d), ~global0.a.x);
}

