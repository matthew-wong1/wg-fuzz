struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: Struct_4;

var<private> global2: array<f32, 29> = array<f32, 29>(-257f, -728f, 159f, -325f, 1293f, -622f, 585f, 322f, 213f, -1000f, 1501f, 404f, -342f, 1485f, -473f, -990f, -1000f, 236f, -2038f, -815f, 112f, -562f, 564f, 722f, -168f, 111f, -911f, 1000f, 567f);

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, _wgslsmith_f_op_f32(global1.d.a.b - -1000f)));
    var var_1 = select(vec2<bool>(_wgslsmith_add_u32(global1.b.x, ~48292u) != ~select(0u, 80733u, true), !(!any(vec3<bool>(true, true, true)))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, !any(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), any(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), vec2<bool>(true, true))));
    global1 = Struct_4(~firstTrailingBit(-2140i), vec4<u32>(~u_input.c, ~0u & _wgslsmith_div_u32(u_input.a.x, global1.d.a.a.x), 14420u, countOneBits(u_input.c) & 22964u) >> ((abs(vec4<u32>(global1.b.x, u_input.c, 107u, global1.b.x) & global1.d.a.a) << (global1.d.a.a % vec4<u32>(32u))) % vec4<u32>(32u)), -vec3<i32>(~global1.d.a.c, global1.d.a.c, global1.d.a.c) ^ min(u_input.b.xwx, global1.c), global1.d);
    let var_2 = global1.d.a;
    var var_3 = vec3<u32>(~(~(~_wgslsmith_mod_u32(65196u, 4294967295u))), ~_wgslsmith_add_u32(1u, global1.b.x), ~u_input.c);
    return vec2<u32>(_wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(u_input.a.x, var_3.x)), firstTrailingBit(vec2<u32>(u_input.c, 0u)), !select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), true)), var_3.xz ^ ~abs(vec2<u32>(u_input.c, var_2.a.x))), u_input.c);
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_mult_i32(~_wgslsmith_add_i32(~0i, u_input.b.x), ~global1.a), arg_1.b, global1.c, global1.d);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(650f, arg_1.d.a.b, 1134f, arg_1.d.a.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-591f, global1.d.a.b, -178f, arg_1.d.a.b) * vec4<f32>(global2[_wgslsmith_index_u32(arg_1.d.a.a.x, 29u)], var_0.d.a.b, var_0.d.a.b, var_0.d.a.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-144f, 228f, -210f, var_0.d.a.b), vec4<f32>(var_0.d.a.b, 695f, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], arg_1.d.a.b))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1496f, var_0.d.a.b, 811f, -1230f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, 135f, arg_1.d.a.b, var_0.d.a.b)))))), arg_1.d.a, global1.b.zyx << (_wgslsmith_mult_vec3_u32(arg_1.b.zzz, _wgslsmith_mod_vec3_u32(~global1.d.a.a.wyz, firstTrailingBit(vec3<u32>(52907u, global1.b.x, 1u)))) % vec3<u32>(32u)));
    let var_2 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.a.b, _wgslsmith_f_op_f32(arg_1.d.a.b * -1344f)))), var_1.a, arg_1.d.a.b, global1.d.a.b);
    var var_3 = !(!select(select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true), true), vec2<bool>(false, false), arg_0));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~abs(-vec3<i32>(var_0.d.a.c, arg_1.a, global1.d.a.c)), ~vec3<i32>(~0i, arg_1.d.a.c, global1.d.a.c >> (4294967295u % 32u))), 49593i);
    return global1.d;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_3, 26>();
    let var_0 = ~(-(~_wgslsmith_div_vec2_i32(abs(vec2<i32>(-70740i, arg_3.x)), global1.c.zy)));
    let var_1 = func_2(true, Struct_4(2147483647i, ~_wgslsmith_div_vec4_u32(global1.d.a.a, firstTrailingBit(vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, global1.b.x, arg_2.a.x))), _wgslsmith_clamp_vec3_i32(-min(vec3<i32>(-2147483647i, -36356i, -8482i), global1.c), _wgslsmith_div_vec3_i32(u_input.b.wyx, u_input.b.zzy), global1.c), Struct_2(global1.d.a))).a;
    global2 = array<f32, 29>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, arg_1.a.b, global1.d.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - 883f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(584f, 2114f), _wgslsmith_f_op_f32(544f * arg_2.b), _wgslsmith_f_op_f32(1112f - arg_2.b), arg_1.a.b))), var_1, reverseBits(_wgslsmith_mod_vec3_u32(~global1.b.wzy << (max(vec3<u32>(4294967295u, 6139u, arg_1.a.a.x), arg_2.a.wwx) % vec3<u32>(32u)), arg_1.a.a.ywy)));
    return arg_1.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_4(global1.d.a.c, func_2(max(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 1u)), ~u_input.c) < _wgslsmith_mod_u32(~43914u, global1.d.a.a.x), Struct_4(u_input.b.x, abs(global1.d.a.a), select(-vec3<i32>(1i, 0i, 3505i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, global1.d.a.c), vec3<i32>(global1.d.a.c, global1.a, global1.d.a.c)), true), global1.d)), func_2(false, Struct_4(-u_input.b.x, global1.d.a.a << (~vec4<u32>(32990u, u_input.c, 1u, global1.d.a.a.x) % vec4<u32>(32u)), vec3<i32>(-u_input.b.x, 2528i, ~u_input.b.x), func_2(true, Struct_4(u_input.b.x, global1.d.a.a, vec3<i32>(-5708i, global1.a, global1.c.x), global1.d)))).a, vec2<i32>(global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(global1.a, ~(-1i)))));
    global3 = 17349i;
    global2 = array<f32, 29>();
    global2 = array<f32, 29>();
    let var_1 = !(!any(!(!vec4<bool>(true, true, arg_0, false))));
    return Struct_1(vec4<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global1.b.x, 35558u), abs(var_0.a.x), _wgslsmith_clamp_u32(func_3(global2[_wgslsmith_index_u32(1u, 29u)], vec4<f32>(266f, 541f, -551f, 440f), global1.d.a.b, global1.d.a.b).x, min(u_input.a.x, var_0.a.x), global1.b.x)), var_0.a.x, 39227u), _wgslsmith_f_op_f32(floor(func_2((arg_0 != false) && var_1, Struct_4(-2147483647i, ~vec4<u32>(var_0.a.x, var_0.a.x, global1.b.x, 27137u), global1.c, Struct_2(Struct_1(vec4<u32>(global1.b.x, 85830u, 1u, global1.b.x), global2[_wgslsmith_index_u32(global1.b.x, 29u)], var_0.c)))).a.b)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false);
    global3 = global1.d.a.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.a.a.x, u_input.a.x) << (vec2<u32>(u_input.a.x << (33344u % 32u), ~48403u) % vec2<u32>(32u)), ~vec2<u32>(min(53564u, 19365u), global1.b.x << (var_0.a.x % 32u))) % 32u);
    let var_1 = true || all(vec4<bool>(true, true, true, true));
    var_0 = global1.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~(~global1.d.a.a.wxx), vec3<u32>(~(u_input.a.x ^ var_0.a.x), ~0u >> (~u_input.a.x % 32u), var_0.a.x | ~1u)), -728f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(~var_0.a.x, u_input.a.x, firstLeadingBit(global1.d.a.a.x))), 29u)]), ~(-_wgslsmith_mult_i32(var_0.c, _wgslsmith_sub_i32(-18608i, var_0.c))));
}

