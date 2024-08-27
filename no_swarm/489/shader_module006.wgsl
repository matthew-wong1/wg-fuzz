struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(115315u, 28937u));

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global3 = -(min(vec3<i32>(countOneBits(global3.x), -24955i, -18624i), -(vec3<i32>(22603i, global3.x, global3.x) & vec3<i32>(global3.x, global3.x, global3.x))) ^ vec3<i32>((global3.x << (1u % 32u)) << (34005u % 32u), global3.x, global3.x));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x), 31u)];
    global0 = array<Struct_4, 31>();
    global3 = firstLeadingBit(-(vec3<i32>(-1i) * -vec3<i32>(global3.x, global3.x, 1i))) >> (var_0.a.yxx % vec3<u32>(32u));
    var var_1 = ~max(~((u_input.a.x ^ var_0.e.x) >> (9517u % 32u)), 0u);
    return !(!select(true, var_0.b.b, var_0.c.x));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    let var_0 = vec2<i32>(arg_3.x, abs(-(arg_3.x >> (~arg_1.e.x % 32u))));
    global3 = firstLeadingBit(arg_3.zyz);
    global3 = min(-_wgslsmith_add_vec3_i32(~abs(vec3<i32>(1i, -1i, 1i)), arg_3.wyw), _wgslsmith_sub_vec3_i32(max(vec3<i32>(18747i, 0i, 20095i) >> (~vec3<u32>(4512u, arg_1.e.x, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global3.x, 2147483647i), firstLeadingBit(arg_3.wyy), arg_3.yyz)), ~vec3<i32>(global3.x, 0i, arg_3.x) ^ (_wgslsmith_mult_vec3_i32(arg_3.zzx, arg_3.xxw) | arg_3.zzx)));
    var var_1 = arg_3.wyw;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, arg_1.d), _wgslsmith_f_op_f32(-166f - -1000f), _wgslsmith_f_op_f32(-188f * arg_1.d), global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, arg_1.d, arg_1.d, 1414f), vec4<f32>(global1.x, -224f, 954f, -270f))), vec4<f32>(-153f, arg_1.d, 324f, -1683f))))));
    return -1233f;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2));
    var var_0 = !vec4<bool>(_wgslsmith_mod_i32(-38016i, 1i) <= arg_3.x, func_2(global1.xy), global3.x <= (i32(-1i) * -global3.x), true);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(all(vec4<bool>(!var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, true)), true, var_0.x)), Struct_4(~vec4<u32>(1u, 7719u, arg_0.x, 4294967295u) & min(vec4<u32>(5815u, 55211u, arg_0.x, 1u), vec4<u32>(arg_0.x, u_input.a.x, 86454u, arg_0.x)), Struct_1(any(var_0.wyw), true), var_0.zx, _wgslsmith_f_op_f32(-global1.x), ~(~vec4<u32>(1u, arg_0.x, u_input.a.x, 14536u))), Struct_2(Struct_1(var_0.x, false), ~arg_3.x << (_wgslsmith_div_u32(57393u, arg_0.x) % 32u), arg_3.x, Struct_1(var_0.x, func_2(vec2<f32>(707f, 165f)))), vec4<i32>(-1i) * -vec4<i32>(arg_1, arg_3.x, -2147483647i, arg_1)))));
    let var_2 = select(vec3<bool>(true, any(select(vec3<bool>(var_0.x, false, var_0.x), var_0.zxy, !var_0.zzx)), !(!any(vec4<bool>(var_0.x, false, true, true)))), !vec3<bool>(all(!vec2<bool>(var_0.x, true)), var_0.x, var_0.x), !select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, true), true), var_0.x));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))))))));
    return vec2<u32>(~51309u, 12434u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.a.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(82374u, u_input.a.x, 4294967295u, 56082u), ~vec4<u32>(u_input.b, 4294967295u, 11578u, 12832u))), 31u)];
    var var_1 = Struct_5(var_0.b);
    let var_2 = false;
    var var_3 = _wgslsmith_div_vec2_i32(-global3.zx >> (u_input.a % vec2<u32>(32u)), ~(~(-global3.xz))) << (~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, var_0.e.x) | u_input.a, func_1(_wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(u_input.b, 1u)], var_0.e.yw), -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(652f, var_0.d, -916f)), vec3<i32>(global3.x, global3.x, -2358i) | vec3<i32>(global3.x, global3.x, 2147483647i))) % vec2<u32>(32u));
    var var_4 = vec2<bool>(var_0.d != _wgslsmith_f_op_f32(func_3(var_2, Struct_4(~vec4<u32>(33059u, u_input.b, 40127u, u_input.a.x), var_0.b, !vec2<bool>(var_1.a.b, var_0.b.a), _wgslsmith_f_op_f32(var_0.d - var_0.d), firstLeadingBit(vec4<u32>(1u, var_0.a.x, u_input.b, var_0.e.x))), Struct_2(var_1.a, var_3.x, 2147483647i, Struct_1(true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3.x, -2147483647i, -2147483647i), vec4<i32>(35807i, global3.x, var_3.x, -2147483647i), vec4<i32>(var_3.x, global3.x, 12971i, var_3.x)) & -vec4<i32>(-47192i, -4341i, global3.x, -12771i))), all(select(var_0.c, select(var_0.c, vec2<bool>(true, var_2), !var_0.c), select(var_0.c, vec2<bool>(false, true), !var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(20056u >> (u_input.a.x % 32u), _wgslsmith_div_u32(4294967295u, var_0.a.x)), firstLeadingBit(firstLeadingBit(var_0.e.x))) >> (1u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.x, _wgslsmith_mod_u32(u_input.b, u_input.a.x)), vec2<u32>(u_input.a.x, ~_wgslsmith_mult_u32(var_0.e.x, 4294967295u))));
}

