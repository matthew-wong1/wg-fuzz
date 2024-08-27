struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 3> = array<i32, 3>(i32(-2147483648), 2147483647i, 80714i);

var<private> global2: array<i32, 24> = array<i32, 24>(-19119i, 33330i, -4507i, 1i, -28164i, -1i, 16510i, -47375i, i32(-2147483648), 2147483647i, -13764i, 1i, 0i, -33134i, 2147483647i, 2147483647i, 24276i, 2147483647i, i32(-2147483648), 1i, -4327i, 2147483647i, 47092i, 2147483647i);

var<private> global3: array<i32, 3> = array<i32, 3>(i32(-2147483648), 0i, 2147483647i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global0 = Struct_4(!select(vec4<bool>(any(vec3<bool>(global0.a.x, global0.a.x, false)), any(global0.a.xzz), true, !global0.a.x), !global0.a, false), Struct_1(!global0.a.x, vec2<f32>(-1701f, _wgslsmith_f_op_f32(round(global0.b.b.x)))), global0.c);
    var var_0 = Struct_2(global0.b, global0.a);
    global0 = Struct_4(select(select(select(global0.a, var_0.b, true), global0.a, all(vec2<bool>(global0.a.x, false))), !(!vec4<bool>(var_0.b.x, true, false, false)), select(!var_0.b, select(!vec4<bool>(true, var_0.a.a, true, var_0.b.x), !var_0.b, var_0.b.x), select(!vec4<bool>(false, true, var_0.b.x, global0.a.x), vec4<bool>(global0.a.x, true, false, false), !global0.a))), Struct_1(!(!(934f > var_0.a.b.x)), var_0.a.b), global0.c);
    var var_1 = select(select(select(!select(global0.a.www, vec3<bool>(var_0.a.a, var_0.b.x, true), global0.b.a), select(vec3<bool>(global0.a.x, false, global0.b.a), var_0.b.yyz, select(global0.a.yzy, vec3<bool>(true, global0.a.x, false), global0.a.yyy)), all(var_0.b)), vec3<bool>(global0.a.x, any(!vec2<bool>(var_0.b.x, true)), ~global1[_wgslsmith_index_u32(0u, 3u)] < ~(-1i)), true), select(!global0.a.wxz, vec3<bool>(all(global0.a.zwy), all(vec4<bool>(var_0.b.x, var_0.b.x, global0.b.a, false)) || var_0.a.a, var_0.b.x), vec3<bool>(true, var_0.a.a, false)), var_0.b.x);
    var var_2 = Struct_4(!(!vec4<bool>(!var_0.a.a, true, global0.a.x, true)), global0.b, vec2<i32>(~(1i << (max(0u, u_input.b.x) % 32u)), -2147483647i));
    return global0.c;
}

fn func_2() -> Struct_2 {
    global0 = Struct_4(global0.a, Struct_1(global0.b.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1264f)))), global0.b.b.x)), (vec2<i32>(-64862i, global1[_wgslsmith_index_u32(u_input.b.x, 3u)]) ^ func_3()) >> (min(_wgslsmith_clamp_vec2_u32(u_input.b.xz, select(vec2<u32>(u_input.b.x, 89793u), vec2<u32>(0u, u_input.b.x), vec2<bool>(true, true)), vec2<u32>(u_input.b.x, 4294967295u)), firstTrailingBit(vec2<u32>(u_input.b.x, 75418u))) % vec2<u32>(32u)));
    let var_0 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_add_u32(max(1u, u_input.a.x >> (57187u % 32u)), _wgslsmith_sub_u32(firstTrailingBit(56527u), u_input.a.x)), 9200u), Struct_2(global0.b, vec4<bool>(_wgslsmith_f_op_f32(sign(1381f)) == _wgslsmith_div_f32(422f, global0.b.b.x), !global0.a.x, !any(vec4<bool>(false, true, global0.b.a, global0.b.a)), global0.b.a)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 0i, -2054i), vec3<i32>(global0.c.x, global1[_wgslsmith_index_u32(74763u, 3u)], 16534i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 0i, 0i)) ^ abs(vec3<i32>(-2147483647i, 35570i, global1[_wgslsmith_index_u32(26554u, 3u)])), max(vec3<i32>(-16399i, 2147483647i, 31959i), vec3<i32>(-1i, global0.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]) ^ vec3<i32>(global3[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)])), !global0.a.wxx) ^ ~select(vec3<i32>(-30879i, global0.c.x, global1[_wgslsmith_index_u32(40367u, 3u)]), ~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global0.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]), true), Struct_2(global0.b, vec4<bool>(!global0.b.a, true, false, !global0.a.x)), ~(-(vec3<i32>(2147483647i, 1i, global2[_wgslsmith_index_u32(33958u, 24u)]) << (u_input.a % vec3<u32>(32u)))) << (firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 17153u, 24242u), u_input.a)) % vec3<u32>(32u)));
    global0 = Struct_4(!vec4<bool>(global0.b.a, any(!vec3<bool>(var_0.b.b.x, true, var_0.d.a.a)), false, true), Struct_1(false, global0.b.b), _wgslsmith_add_vec2_i32(func_3(), global0.c) >> (~_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a.xx), vec2<u32>(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.xz)) % vec2<u32>(32u)));
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    return var_0.d;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> i32 {
    global2 = array<i32, 24>();
    var var_0 = abs(global3[_wgslsmith_index_u32(0u, 3u)]);
    let var_1 = vec4<i32>(-139i, -19638i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 1536i, ~(-(~0i))), ~_wgslsmith_sub_i32(50643i, 2147483647i));
    var var_2 = -107f;
    return min(_wgslsmith_add_i32(i32(-1i) * -1i, 1i), firstTrailingBit(-21702i) & -2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_i32(min(global3[_wgslsmith_index_u32(countOneBits(1u), 3u)], -63487i), ~func_4(-1637f, func_2()) >> (abs(arg_0.x) % 32u));
    var var_1 = Struct_4(vec4<bool>(true, global0.a.x, ~u_input.b.x <= ~(~arg_0.x), true), global0.b, -vec2<i32>(~global3[_wgslsmith_index_u32(0u, 3u)], -45442i) >> (u_input.a.zz % vec2<u32>(32u)));
    var_1 = Struct_4(global0.a, func_2().a, ~(select(global0.c, vec2<i32>(1i, -88261i), false) ^ global0.c) | _wgslsmith_div_vec2_i32(countOneBits(global0.c & vec2<i32>(-2147483647i, -2147483647i)), abs(~var_1.c)));
    let var_2 = -var_0 & -2147483647i;
    global2 = array<i32, 24>();
    return countOneBits(abs(abs(-vec4<i32>(-1i, 2147483647i, var_0, var_0))) << (_wgslsmith_mod_vec4_u32(abs(select(u_input.b, vec4<u32>(arg_0.x, 24616u, 91297u, 1u), var_1.a)), vec4<u32>(arg_0.x, firstLeadingBit(arg_0.x), arg_0.x, 1u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.xz, _wgslsmith_f_op_f32(1595f + global0.b.b.x));
    global0 = Struct_4(!func_2().b, global0.b, ~(-func_3()));
    var var_1 = global0.b;
    global1 = array<i32, 3>();
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(var_1.b))))) - global0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 24u)]) ^ global2[_wgslsmith_index_u32(~u_input.b.x, 24u)], 0i, true), global2[_wgslsmith_index_u32(abs(abs(0u)), 24u)], min(-global2[_wgslsmith_index_u32(~0u, 24u)], _wgslsmith_div_i32(global0.c.x, -1i)), -abs(1i)), _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(44864u, u_input.a.x)), _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.b)), _wgslsmith_add_vec2_i32(var_0.zz, var_0.wz << ((u_input.b.ww >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))), 12946i);
}

