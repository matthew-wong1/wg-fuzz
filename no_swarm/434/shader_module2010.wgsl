struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = select(!arg_0.c.b, !arg_0.b.b, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1270f, -1000f, 441f, -1543f) + vec4<f32>(-527f, arg_0.c.a.x, arg_0.c.a.x, -1170f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, 808f, -378f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-882f, 969f, -401f, arg_0.b.a.x), vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.c.a.x, arg_0.c.a.x)))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.a.x * -377f))), _wgslsmith_f_op_f32(-1f), arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.x, -1902f)))));
    let var_2 = u_input.c.x;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -735f, 136f, -871f), var_1, var_0.x)), var_1))))), var_1);
    var var_4 = Struct_4(~u_input.a, vec4<u32>(var_2, ~(~72037u), countOneBits(var_2), 4294967295u), var_3.x, Struct_3(true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1526f, var_1.x, var_1.x))), select(arg_0.b.b, !arg_0.c.b, vec2<bool>(var_0.x, false))), arg_0.b));
    return all(select(vec4<bool>((-20286i & u_input.a.x) != var_4.a.x, select(true, true, true), arg_0.a, 1386f == _wgslsmith_f_op_f32(-708f * var_4.c)), !vec4<bool>(arg_0.a != false, var_4.a.x < 3242i, true, var_4.d.a), !vec4<bool>(var_0.x, var_4.d.a, false == var_0.x, select(false, arg_0.a, true))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = 10219i;
    var var_1 = select(select(!select(!vec3<bool>(arg_0.a, true, false), vec3<bool>(true, arg_0.c.b.x, arg_1), all(vec2<bool>(arg_0.a, arg_0.c.b.x))), vec3<bool>(func_3(arg_0), !any(arg_0.c.b), !arg_1), select(select(vec3<bool>(arg_0.b.b.x, true, arg_0.a), vec3<bool>(true, true, true), any(vec4<bool>(arg_1, false, false, false))), !vec3<bool>(true, false, arg_0.a), !vec3<bool>(true, true, arg_1))), select(!(!select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_1, true))), vec3<bool>(true, arg_1, func_3(arg_0)), arg_0.a), select(vec3<bool>(true, true, false), select(!vec3<bool>(false, arg_1, arg_1), !select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, arg_1), false), !select(vec3<bool>(true, true, arg_0.b.b.x), vec3<bool>(arg_0.c.b.x, false, arg_0.b.b.x), false)), true));
    var var_2 = -847f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.a.x, 813f)) * arg_0.c.a.x)), 1553f));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f * var_3.x) + var_3.x))));
    return _wgslsmith_f_op_f32(-arg_0.b.a.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(func_3(Struct_3(false, arg_1, arg_1)), arg_1, arg_1), any(vec3<bool>(false, true, arg_0)) | true))) * _wgslsmith_f_op_f32(-arg_1.a.x));
    var_0 = -752f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x));
    let var_1 = u_input.a.zwx;
    var var_2 = arg_1;
    return vec4<bool>(!(!any(var_2.b)), false, select(true, true, arg_1.b.x), var_2.b.x);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-908f)), _wgslsmith_f_op_f32(-1154f * 746f), _wgslsmith_div_f32(747f, 1214f)), !vec2<bool>(false, arg_1.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -1557f, -471f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1738f, 448f, 1941f), vec3<f32>(-841f, -592f, 1640f)))), arg_1.xx)), any(!select(arg_1, vec3<bool>(arg_1.x, arg_1.x, true), arg_1))));
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, reverseBits(-u_input.a.x)), u_input.a.wz | (-u_input.b.zx >> (~vec2<u32>(u_input.c.x, 74104u) % vec2<u32>(32u)))) << ((u_input.c.yy | ~min(u_input.c.zx & u_input.c.yy, select(vec2<u32>(u_input.c.x, 0u), u_input.c.zx, arg_2))) % vec2<u32>(32u));
    var var_3 = u_input.b;
    var_0 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(942f, var_1, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 1186f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1689f, var_1)))), !(!arg_1.xz));
}

fn func_1() -> vec4<f32> {
    let var_0 = vec2<bool>(false == !any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true)) | true);
    var var_1 = Struct_2(func_5(0u, vec3<bool>(any(func_2(false, Struct_1(vec3<f32>(396f, -972f, -1874f), var_0))), (var_0.x == false) || func_3(Struct_3(true, Struct_1(vec3<f32>(-1418f, 388f, -115f), vec2<bool>(false, var_0.x)), Struct_1(vec3<f32>(609f, 651f, 809f), var_0))), true), all(!func_2(false, Struct_1(vec3<f32>(-503f, 1000f, 3326f), vec2<bool>(var_0.x, var_0.x))).yyy)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1043f, 1106f)) - vec3<f32>(-1179f, 473f, 857f)))), func_5(~(~u_input.c.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), all(!vec3<bool>(var_0.x, var_0.x, var_0.x))).b), func_5(u_input.c.x, vec3<bool>(var_0.x, var_0.x, var_0.x), !func_5(~u_input.c.x, !vec3<bool>(true, var_0.x, false), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))).b.x), select(~countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(1u, u_input.c.x, u_input.c.x, 0u), false), ~vec4<u32>(0u, u_input.c.x, 13979u, 7157u)), true) << (~vec4<u32>(~u_input.c.x, ~15966u, u_input.c.x ^ 41469u, ~0u) % vec4<u32>(32u)));
    var_1 = Struct_2(var_1.a, func_5(~(var_1.d.x ^ var_1.d.x) & var_1.d.x, func_2(false, var_1.a).zww, true), var_1.a, vec4<u32>(1u, max(38191u, 1u), u_input.c.x, u_input.c.x));
    let var_2 = var_1.c.b.x;
    let var_3 = Struct_2(func_5(~u_input.c.x & ~select(u_input.c.x, 0u, true), !(!(!vec3<bool>(var_0.x, false, true))), var_1.a.b.x), func_5(29032u, select(vec3<bool>(true, true, func_5(4294967295u, vec3<bool>(var_0.x, false, true), var_1.b.b.x).b.x), vec3<bool>(u_input.a.x >= u_input.a.x, var_0.x, var_1.c.b.x || var_0.x), false | (var_1.c.b.x == var_1.c.b.x)), var_1.a.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, -1322f, 305f) + vec3<f32>(-957f, var_1.c.a.x, var_1.c.a.x)) * var_1.a.a) * vec3<f32>(_wgslsmith_f_op_f32(-1547f + 1000f), _wgslsmith_f_op_f32(-1024f * var_1.c.a.x), _wgslsmith_f_op_f32(select(var_1.b.a.x, var_1.b.a.x, true)))), !select(!vec2<bool>(var_0.x, var_1.c.b.x), !var_1.c.b, vec2<bool>(true, var_1.a.b.x))), ~var_1.d << (vec4<u32>(u_input.c.x, ~_wgslsmith_dot_vec3_u32(var_1.d.yxy, vec3<u32>(var_1.d.x, 4294967295u, u_input.c.x)), 1u, var_1.d.x) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(267f * _wgslsmith_f_op_f32(-554f + var_1.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2408f))), var_1.c.a.x, -1870f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(250f, var_3.a.a.x, 3192f, var_1.c.a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-958f, var_1.b.a.x, -614f, 1737f)))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_1 = vec4<bool>(true, !((true && (var_0.x < var_0.x)) != true), !func_3(Struct_3(all(vec2<bool>(false, true)), Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), vec2<bool>(false, false)), Struct_1(vec3<f32>(-873f, var_0.x, -337f), vec2<bool>(false, true)))), any(vec4<bool>(true, true, true, true)) || !(true || (u_input.c.x >= 0u)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))), -398f, func_5(1u, func_2(var_1.x, Struct_1(vec3<f32>(-569f, -1000f, var_2), var_1.wx)).xzw, var_1.x).a.x)), var_1.xw);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1478f, -265f, 927f, var_3.a.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_3.a.x, 1000f, -903f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(831f, var_2, -581f, var_3.a.x))), var_3.b.x)), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, -1727f, var_2, 727f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.a.x, var_0.x, -2418f))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_vec2_u32(u_input.c.xy, ~u_input.c.xz)));
}

