struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1580f, -1349f, -1369f);

var<private> global1: bool = true;

var<private> global2: array<f32, 19> = array<f32, 19>(-1956f, 1367f, 543f, -1169f, 992f, 802f, 1023f, 1174f, -579f, -327f, 400f, 531f, -2466f, 243f, 540f, 1064f, 132f, 796f, 2192f);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(!vec4<bool>(any(vec3<bool>(true, false, true)) && (u_input.a.x < 100757u), true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), true), any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), true), vec4<bool>(any(vec2<bool>(false, true)), true, false, false), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, global3.c.x >= 15249u))), Struct_1(_wgslsmith_mult_vec2_i32(~firstLeadingBit(vec2<i32>(-52349i, 0i)), -countOneBits(vec2<i32>(global3.d.x, 1i))), global3.b, countOneBits(_wgslsmith_add_vec2_u32(~global3.c, _wgslsmith_sub_vec2_u32(global3.c, vec2<u32>(global3.c.x, 4294967295u)))), abs(select(global3.d, global3.d, true))), global3.a.x);
    let var_1 = select(any(var_0.a.xy), var_0.b, true);
    global3 = Struct_1(global3.a, -207f, _wgslsmith_mod_vec2_u32(global3.c, vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, var_0.c.c.x), abs(abs(global3.c.x)))), _wgslsmith_clamp_vec4_i32(var_0.c.d, ~(-reverseBits(var_0.c.d)), global3.d));
    var var_2 = Struct_3(Struct_2(vec4<bool>(true, any(!vec3<bool>(var_0.a.x, var_0.b, var_0.a.x)), any(select(vec3<bool>(var_0.a.x, var_0.b, false), vec3<bool>(false, var_1, false), false)), !any(vec2<bool>(var_0.b, true))), max(firstLeadingBit(2147483647i), var_0.d) != abs(var_0.d & -1i), var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -8819i), (vec2<i32>(0i, global3.a.x) >> (var_0.c.c % vec2<u32>(32u))) ^ max(global3.d.zw, vec2<i32>(var_0.d, global3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b))), reverseBits(_wgslsmith_div_vec2_u32(var_0.c.c, u_input.c.zw)), select(var_0.a.xw, var_0.a.xz, (var_0.c.c.x >> (0u % 32u)) <= firstLeadingBit(~global3.c.x)));
    var var_3 = var_0.c;
    return 1965f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> vec2<u32> {
    var var_0 = all(arg_1.zy) | any(arg_1.xx);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 1001f, global2[_wgslsmith_index_u32(13131u, 19u)], -195f) + vec4<f32>(-1622f, global0.x, arg_0.b, arg_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, global0.x, -1763f, -1505f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global0.x, -108f, -489f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 740f, arg_0.b, 1090f) - vec4<f32>(global3.b, -803f, global3.b, arg_2.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, -717f, global0.x, global2[_wgslsmith_index_u32(18390u, 19u)]) * vec4<f32>(global2[_wgslsmith_index_u32(arg_0.c.x, 19u)], -190f, arg_0.b, -1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, 1000f, _wgslsmith_div_f32(arg_0.b, global2[_wgslsmith_index_u32(u_input.b, 19u)]), -1073f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1047f, 304f, 1000f, global3.b))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 166f, 295f, 616f))))))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c), ~u_input.c, countOneBits(u_input.c))), countOneBits(arg_0.c.x) ^ arg_2.c.x);
    var_0 = false;
    let var_3 = Struct_1(_wgslsmith_mod_vec2_i32(~((global3.a | vec2<i32>(-1i, arg_0.a.x)) ^ vec2<i32>(arg_2.d.x, arg_2.d.x)), ~(~vec2<i32>(arg_0.a.x, arg_0.a.x) ^ (vec2<i32>(arg_2.a.x, 1i) & arg_2.d.yy))), 1000f, vec2<u32>(u_input.b, _wgslsmith_clamp_u32(4294967295u, 40617u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(82896u, var_2, 1u, 45465u)), vec4<u32>(8025u, 4294967295u, 1u, 4294967295u) & u_input.c))), max(reverseBits(select(vec4<i32>(-2147483647i, -13524i, -2147483647i, arg_2.d.x), countOneBits(vec4<i32>(24333i, -1i, arg_0.d.x, arg_2.d.x)), all(vec4<bool>(arg_3, arg_1.x, arg_1.x, false)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_mult_i32(global3.d.x, -1i), -2147483647i, ~(-2147483647i)), _wgslsmith_add_vec4_i32(arg_0.d, _wgslsmith_add_vec4_i32(arg_2.d, vec4<i32>(16114i, -12854i, -2147483647i, arg_2.a.x))), vec4<i32>(~1i, -arg_2.d.x, -arg_2.d.x, firstTrailingBit(-2147483647i)))));
    return select(global3.c, select(select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3292u, 71551u, var_3.c.x, arg_2.c.x), vec4<u32>(52565u, 1u, global3.c.x, 47295u)), countOneBits(var_3.c.x)), max(vec2<u32>(var_3.c.x, arg_2.c.x), ~vec2<u32>(55770u, var_2)), arg_1.zz), ~vec2<u32>(countOneBits(4294967295u), global3.c.x >> (62547u % 32u)), vec2<bool>(false, arg_3)), select(!arg_1.zz, vec2<bool>(any(vec4<bool>(false, false, false, arg_3)) | arg_3, any(vec2<bool>(arg_1.x, arg_3))), any(!select(vec4<bool>(arg_3, false, false, true), vec4<bool>(false, false, arg_1.x, arg_1.x), arg_3))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_3, -380f, func_4(arg_3.c, vec3<bool>(true, arg_3.b, !(!arg_3.b)), Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(4395i, arg_2.d.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.a.x, arg_3.c.d.x), vec2<i32>(arg_2.d.x, arg_2.d.x), arg_1.xx)), _wgslsmith_f_op_f32(func_3()), vec2<u32>(0u, 15136u) >> (arg_2.c % vec2<u32>(32u)), global3.d), true), vec2<bool>(!any(arg_3.a.yx), arg_3.a.x));
    var var_1 = arg_3;
    let var_2 = Struct_3(Struct_2(vec4<bool>(var_0.d.x, all(!arg_3.a.xy), var_1.a.x && var_1.a.x, !all(vec4<bool>(false, false, false, var_1.a.x))), any(var_0.a.a.xxz), arg_3.c, var_1.d), -699f, countOneBits(vec2<u32>(firstTrailingBit(arg_3.c.c.x), 332u)), !(!(!select(var_1.a.xz, vec2<bool>(true, false), var_1.a.yz))));
    var_1 = Struct_2(vec4<bool>(any(var_2.d), all(!var_1.a.zz) && !any(vec2<bool>(true, true)), false, !(!var_1.a.x)), var_1.b, Struct_1(arg_3.c.d.yy, _wgslsmith_f_op_f32(f32(-1f) * -330f), max(vec2<u32>(arg_0.x, 1u), vec2<u32>(24399u, var_1.c.c.x)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(28588i, var_2.a.c.a.x, arg_3.d, arg_3.c.a.x), arg_3.c.d | vec4<i32>(5026i, arg_1.x, var_1.c.a.x, var_0.a.d)), select(-vec4<i32>(-7961i, arg_1.x, global3.a.x, -2147483647i), abs(arg_3.c.d), false))), (var_2.a.d | -min(-1i, var_1.c.d.x)) >> (0u % 32u));
    var var_3 = Struct_2(select(!vec4<bool>(arg_3.b, var_2.a.b, !var_0.a.a.x, all(var_0.a.a)), select(arg_3.a, !(!var_1.a), true), true), false, var_2.a.c, 2147483647i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.b * _wgslsmith_f_op_f32(select(arg_2.b, -590f, var_3.b))), var_3.c.b));
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = arg_0;
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    var var_1 = Struct_1(~vec2<i32>(43929i, var_0.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-831f))), arg_0.c.c, var_0.c.d);
    var var_2 = ~vec4<u32>(global3.c.x, u_input.b, 56059u, 103780u);
    return vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a & vec3<u32>(var_0.c.c.x, global3.c.x, 12263u), _wgslsmith_clamp_vec3_u32(var_2.zzw, var_2.wyx, u_input.a)), var_2.wxx), global3.d.yww, Struct_1(arg_0.c.d.zw, 492f, global3.c, min(var_0.c.d, ~vec4<i32>(0i, -1i, global3.a.x, -19603i))), arg_0)), -153f, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, 323f, -466f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -279f, 1000f) - vec3<f32>(1000f, 1707f, global3.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(1792f, global2[_wgslsmith_index_u32(42776u, 19u)], global3.b)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec4<bool>(false, true, false, false), false, Struct_1(vec2<i32>(global3.d.x, global3.a.x), -171f, vec2<u32>(41406u, 16971u), global3.d), global3.a.x)))))));
    let var_0 = -11993i;
    var var_1 = Struct_3(Struct_2(select(vec4<bool>(false, all(vec4<bool>(false, true, true, true)), true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), select(all(vec2<bool>(false, false)), true, true)), false || !all(vec2<bool>(false, true)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.a.x, -39673i), -global3.a, reverseBits(global3.d.zy)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-548f * 1000f))), global3.c, vec4<i32>(1i, var_0 | 2147483647i, global3.d.x | global3.d.x, global3.a.x)), global3.a.x), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -401f)), vec2<u32>(~reverseBits(~0u), u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(true, -global3.d.x >= -2147483647i), !all(vec3<bool>(false, true, true)) & (~global3.a.x != _wgslsmith_sub_i32(global3.d.x, var_0))));
    global3 = var_1.a.c;
    var_1 = Struct_3(var_1.a, global3.b, var_1.a.c.c, vec2<bool>(firstLeadingBit(var_1.a.d) >= _wgslsmith_sub_i32(_wgslsmith_mod_i32(44508i, 2147483647i), 13093i), var_1.d.x));
    global3 = var_1.a.c;
    let var_2 = true;
    let var_3 = all(!var_1.a.a.zzx);
    let var_4 = Struct_3(var_1.a, 447f, func_4(var_1.a.c, var_1.a.a.wyw, Struct_1(var_1.a.c.a, _wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, global3.c.x), u_input.c.xy | vec2<u32>(0u, 4294967295u), ~global3.c), ~(-global3.d)), !var_3), vec2<bool>(var_3, all(select(select(var_1.a.a.wx, var_1.d, true), select(var_1.a.a.yy, vec2<bool>(var_1.d.x, var_2), vec2<bool>(var_1.a.a.x, true)), global3.d.x <= var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(-868f);
}

