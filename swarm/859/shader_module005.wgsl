struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_3;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global4: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = !select(global1.x, all(global3.yxz), true);
    return firstLeadingBit(vec4<u32>(4294967295u, u_input.b, u_input.b, arg_1.x)) >> (~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x), vec4<u32>(4294967295u, u_input.a, 0u, 39096u)), ~vec4<u32>(arg_1.x, arg_1.x, 1u, 12095u), true)) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    return _wgslsmith_clamp_vec4_u32(~func_3(false, vec3<u32>(5898u, u_input.a, ~u_input.c.x)), ~vec4<u32>(~0u, _wgslsmith_div_u32(u_input.c.x, u_input.a) | u_input.c.x, u_input.b, 98818u << (_wgslsmith_sub_u32(u_input.b, 4294967295u) % 32u)), vec4<u32>(5542u, 1u, u_input.c.x, ~u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> Struct_5 {
    global0 = array<Struct_3, 17>();
    global3 = select(vec4<bool>(global1.x, any(global3.zwy), !select(true, arg_2, 716f < arg_1), false && !any(global3.wz)), select(select(vec4<bool>(global3.x, arg_2, true, all(global3.xw)), !select(vec4<bool>(arg_2, global1.x, true, arg_2), vec4<bool>(arg_2, arg_2, true, false), false), !select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(global3.x, global1.x, false, true), false)), vec4<bool>(true, all(!global3.zz), any(!vec4<bool>(false, global1.x, arg_2, false)), global1.x), vec4<bool>(all(!global3.wx), all(vec4<bool>(false, global1.x, global1.x, arg_2)) | !arg_2, any(vec2<bool>(global1.x, false)), all(vec2<bool>(true, false)))), select(select(!select(vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global3.x, global1.x, true, true)), !(!vec4<bool>(true, global3.x, global1.x, true)), select(any(global3.zw), !global3.x, 13935u >= arg_0.x)), select(!vec4<bool>(false, global1.x, arg_2, false), !select(vec4<bool>(global1.x, global1.x, global3.x, arg_2), vec4<bool>(arg_2, global1.x, false, false), vec4<bool>(global3.x, false, global1.x, false)), (global2.a > global2.b.x) || (24395u != u_input.a)), !vec4<bool>(arg_2 | false, !global1.x, any(global3.wz), true)));
    var var_0 = true;
    var var_1 = Struct_3(global2.b.x, ~_wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(21354i, global2.a, 9721i)), global2.b, firstLeadingBit(global2.b)));
    global4 = -1i & var_1.b.x;
    return Struct_5(abs(firstTrailingBit(var_1.b.x & var_1.b.x) << (abs(10555u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -1468f)) - _wgslsmith_f_op_f32(f32(-1f) * -864f)) == _wgslsmith_f_op_f32(trunc(arg_1)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_5 {
    global0 = array<Struct_3, 17>();
    var var_0 = Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-943f)), -201f, -352f, _wgslsmith_f_op_f32(f32(-1f) * -1566f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1800f, -199f, -511f, -336f)), vec4<f32>(1395f, -1735f, -1837f, 1013f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-921f, -306f, 511f, _wgslsmith_div_f32(859f, 925f)))), true);
    var var_1 = arg_0;
    return Struct_5(-(_wgslsmith_clamp_i32(2147483647i, -51359i, _wgslsmith_dot_vec3_i32(arg_1.b, vec3<i32>(0i, var_1.a, var_0.a.b.x))) ^ arg_3.b.x), true);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = ~(~(~1u));
    let var_1 = func_5(func_4(~(~func_2(vec4<bool>(false, false, global1.x, global3.x), Struct_1(global3.x, vec3<i32>(-1i, global2.b.x, global2.b.x), global3.xy), Struct_1(global3.x, global2.b, vec2<bool>(false, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(652f))), -343f)), any(!select(vec3<bool>(false, global3.x, false), global3.wwz, global3.xzx))), Struct_1(false, global2.b, select(global3.zx, global3.yx, false)), global2.a, Struct_1(global3.x, firstTrailingBit(-(~global2.b)), select(select(vec2<bool>(global1.x, global3.x), global3.zw, select(vec2<bool>(false, true), vec2<bool>(global1.x, global3.x), global3.zz)), global3.xz, select(global3.yx, select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global3.x)), true))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 17u)];
    global1 = !vec2<bool>(true, !all(global3.yz));
    global0 = array<Struct_3, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f * _wgslsmith_f_op_f32(step(-120f, 359f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -781f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-693f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(878f, 803f, 1000f, 347f) - vec4<f32>(1005f, 989f, -734f, 1362f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, -889f, 180f, 759f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(315f, 1129f), _wgslsmith_f_op_f32(func_1(global2.b.x)), _wgslsmith_div_f32(-689f, 1888f), _wgslsmith_f_op_f32(min(-1000f, 1311f)))), vec4<bool>(false, global3.x, func_4(~vec4<u32>(u_input.a, u_input.b, 1u, 29635u), _wgslsmith_f_op_f32(f32(-1f) * -1133f), all(global3.xw)).b, true))));
    var var_1 = global3.xyw;
    global3 = select(!vec4<bool>(true, true, select(!global1.x, func_4(vec4<u32>(1u, 96938u, u_input.b, 4294967295u), -380f, var_1.x).b, global3.x), any(select(vec4<bool>(true, var_1.x, true, global1.x), vec4<bool>(false, false, true, false), global3.x))), vec4<bool>(~(~2147483647i) == (global2.a & _wgslsmith_clamp_i32(-1i, 13643i, 1i)), !((false | global3.x) | true), true, true), vec4<bool>(true, !(!(true || var_1.x)), (true & select(false, true, true)) | all(vec2<bool>(global3.x, true)), var_1.x));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 17u)];
    let var_3 = global0[_wgslsmith_index_u32(u_input.b, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(vec4<bool>(false, any(global3.xxx), !var_1.x, var_1.x), Struct_1(true && var_1.x, -var_2.b, !var_1.yz), Struct_1(true, max(vec3<i32>(0i, global2.a, 34720i), vec3<i32>(var_3.b.x, 1i, 1i)), !vec2<bool>(false, global1.x))).xxw, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, var_0.x)))), u_input.a, vec3<i32>(var_2.a, _wgslsmith_sub_i32(global2.b.x, global2.b.x), ~(-1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -1872f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 538f) * vec2<f32>(-216f, var_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.yy)) + _wgslsmith_f_op_vec2_f32(-var_0.ww))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), var_0.x)));
}

