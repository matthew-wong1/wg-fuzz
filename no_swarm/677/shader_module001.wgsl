struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, false, false, false, true, true, true, false, true, false, false, true, false, false, false, true, true, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_0 = Struct_3(false, 1u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-597f * 1198f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(541f)) - _wgslsmith_div_f32(-1471f, 1539f))), 1i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(u_input.d, 49034i)), Struct_1(~(vec2<i32>(u_input.b, arg_0) | vec2<i32>(arg_0, 0i)), false, -35027i)), Struct_1(~min(~vec2<i32>(1227i, 16863i), _wgslsmith_mod_vec2_i32(vec2<i32>(-49937i, -1i), vec2<i32>(-41875i, 1i))), !(!global0[_wgslsmith_index_u32(u_input.c.x, 21u)] || false), -abs(1i)), Struct_1(-(~vec2<i32>(arg_0, arg_0) & (vec2<i32>(2147483647i, -2147483647i) >> (u_input.c.zz % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(~(~u_input.c.x), 21u)] || true, -u_input.a));
    let var_1 = 1u;
    return ~6692u;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 21>();
    let var_0 = firstTrailingBit(arg_2.yw);
    var var_1 = any(select(select(arg_0.ywx, vec3<bool>(false, true, any(arg_0.xx)), arg_0.x), select(select(!vec3<bool>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(arg_1, 21u)]), arg_0.xzy, !arg_0.wwy), select(arg_0.yxy, vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(arg_1, 21u)], true)), !arg_0.www), !select(select(vec3<bool>(false, false, false), arg_0.xxy, arg_0.x), select(vec3<bool>(true, global0[_wgslsmith_index_u32(23961u, 21u)], true), arg_0.zyz, arg_0.zxx), false)));
    var var_2 = Struct_3(all(!vec4<bool>(true, true, true | global0[_wgslsmith_index_u32(4294967295u, 21u)], true)), ~(~0u), Struct_2(_wgslsmith_f_op_f32(347f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -215f)))), arg_2.x, -26896i, Struct_1(vec2<i32>(var_0.x, var_0.x), any(arg_0.yx) && !arg_0.x, arg_2.x)), Struct_1(select(_wgslsmith_add_vec2_i32(select(var_0, vec2<i32>(arg_2.x, 6404i), vec2<bool>(false, false)), vec2<i32>(1i, 1i)), select(vec2<i32>(1i, arg_2.x), firstTrailingBit(arg_2.xx), select(vec2<bool>(false, arg_0.x), arg_0.yw, global0[_wgslsmith_index_u32(arg_1, 21u)])), arg_0.yw), true, ~2147483647i), Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(var_0), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-378f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-309f, -906f)))), _wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(firstLeadingBit(60792i), -64662i, _wgslsmith_dot_vec2_i32(arg_2.xx, var_0)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.c.a)), var_2.c.a, _wgslsmith_f_op_f32(sign(789f)))))))));
    return Struct_1(vec2<i32>(~2147483647i, var_0.x), false, var_0.x);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> vec4<f32> {
    let var_0 = func_3(select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 21u)], true, true)), vec4<bool>(~0i < arg_1, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], _wgslsmith_f_op_f32(step(-730f, 278f)) > -2069f, !all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], false, false))), !global0[_wgslsmith_index_u32(func_2(35243i << (u_input.c.x % 32u)), 21u)]), arg_2, abs(vec4<i32>(select(-1i, arg_1, global0[_wgslsmith_index_u32(1u, 21u)]), 1i, 1i, u_input.b >> (4294967295u % 32u))) ^ vec4<i32>(0i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(7245i, -2147483647i, 32826i), vec3<i32>(19340i, arg_1, 1i)), u_input.b));
    let var_1 = vec3<bool>(var_0.b, false, true);
    var var_2 = func_3(!(!(!(!vec4<bool>(false, false, var_0.b, var_1.x)))), ~(~((u_input.c.x | 4294967295u) & ~1u)), -_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, -5980i, u_input.a, var_0.a.x), vec4<i32>(-28885i >> (arg_2 % 32u), 2147483647i, u_input.b, -u_input.a))).b;
    var var_3 = 383f;
    var_2 = !any(!(!var_1.zx));
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), -1897f, -2388f, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var var_1 = u_input.c;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(f32(-1f) * -272f))) - -122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-896f - 724f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1985f + -861f) - 244f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2289f * -118f), -233f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-366f)), -222f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, 974f, -157f), vec4<f32>(var_2.x, -647f, -241f, 2033f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, 614f, var_2.x, var_2.x)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(var_2.x, ~u_input.d, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -344f, var_2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -633f, 138f, -1396f) * vec4<f32>(var_2.x, 654f, -1000f, -1070f)))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-var_2.x), ~58619i, firstLeadingBit(var_1.x))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) + _wgslsmith_f_op_f32(var_2.x * 290f)), _wgslsmith_f_op_f32(var_2.x + 1f)), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-688f + 1037f), var_2.x))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1280f))) + _wgslsmith_f_op_f32(step(var_3.x, var_2.x))), var_3.x);
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-192f, _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(856f * 614f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4), -1000f))), vec4<f32>(var_4, _wgslsmith_div_f32(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(sign(191f)))), -405f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1482f, -217f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_3.x))))))), var_1.x ^ u_input.c.x, abs(vec4<i32>(u_input.d, abs(reverseBits(0i)), max(-1i, u_input.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.b), vec2<i32>(-2300i, -1i)))), _wgslsmith_sub_i32(-func_3(vec4<bool>(true, true, true, true), u_input.c.x, abs(vec4<i32>(1i, u_input.b, 1i, u_input.a))).a.x, ~(-u_input.a) & u_input.d));
}

