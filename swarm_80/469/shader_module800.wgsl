struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32((global0.b.b ^ vec4<i32>(-11676i, -14808i, -17845i, u_input.a)) >> ((vec4<u32>(17532u, 23759u, u_input.c.x, global0.a) ^ vec4<u32>(u_input.c.x, global0.b.d, u_input.c.x, global0.b.d)) % vec4<u32>(32u)), ~(-vec4<i32>(-1i, global0.b.b.x, u_input.b, -1897i)));
    var var_1 = Struct_4(Struct_1(any(vec2<bool>(false, !arg_0.x)), max(global0.b.b, vec4<i32>(min(global0.b.b.x, 5007i), -2147483647i, 1i, ~1i)), select(select(select(vec4<bool>(true, true, global0.b.c.x, arg_0.x), vec4<bool>(global0.c.x, global0.c.x, arg_0.x, global0.c.x), vec4<bool>(global0.b.e.x, true, global0.c.x, true)), !arg_0, true), global0.b.c, vec4<bool>(global0.b.c.x, false, !arg_0.x, global0.b.e.x)), 0u, vec4<bool>(true, true, !(-1i >= var_0.x), !all(global0.b.e.zw))), Struct_1(!(!(u_input.a >= u_input.a)), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.xx, var_0.yx), ~global0.b.b.x, select(-1766i, u_input.b, global0.c.x), 4551i)), select(vec4<bool>(!arg_0.x, arg_0.x || arg_0.x, 599f > global1[_wgslsmith_index_u32(73333u, 30u)], true), !arg_0, global0.b.c), 61469u, !select(!arg_0, select(global0.b.c, vec4<bool>(global0.b.a, arg_0.x, arg_0.x, global0.c.x), global0.b.c.x), !arg_0.x)), Struct_3(0u, Struct_1(any(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x), global0.b.c.zyy)), ~vec4<i32>(1i, -59544i, u_input.a, var_0.x), select(select(global0.b.c, vec4<bool>(global0.c.x, arg_0.x, global0.b.c.x, arg_0.x), vec4<bool>(global0.c.x, arg_0.x, true, arg_0.x)), !arg_0, arg_0), 58495u, global0.b.e), select(select(vec3<bool>(false, true, true), select(vec3<bool>(global0.c.x, global0.b.a, false), vec3<bool>(arg_0.x, global0.b.c.x, arg_0.x), vec3<bool>(global0.b.c.x, false, global0.c.x)), !arg_0.yyy), !arg_0.wzy, any(global0.b.e) | !arg_0.x)), Struct_2(-2147483647i, vec3<i32>(1i, firstTrailingBit(u_input.a), global0.b.b.x)));
    return arg_0.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(4294967295u, ~(~u_input.c.x) & 0u) >> (reverseBits(u_input.c) % vec2<u32>(32u));
    global1 = array<f32, 30>();
    var var_1 = !select(select(vec2<bool>(all(global0.b.c.wx), global0.b.e.x), global0.b.c.yy, global0.c.xy), select(global0.c.yx, global0.b.e.xy, global0.b.c.wx), global0.c.xx);
    var var_2 = func_3(global0.b.c);
    let var_3 = Struct_1(true, global0.b.b, select(select(vec4<bool>(all(vec4<bool>(false, false, global0.c.x, var_1.x)), !var_1.x, !var_1.x, true), select(!vec4<bool>(false, true, var_1.x, false), select(global0.b.e, vec4<bool>(true, var_1.x, global0.c.x, false), global0.b.c.x), false), vec4<bool>(global0.b.e.x, true, var_1.x || var_1.x, !var_1.x)), !vec4<bool>(false, var_1.x, var_1.x, any(vec4<bool>(false, global0.b.e.x, true, false))), (min(16317i, 30434i) == arg_0.x) == any(!global0.b.e)), 60417u << (_wgslsmith_add_u32(var_0.x, firstLeadingBit(global0.b.d)) % 32u), vec4<bool>(global0.b.c.x, !global0.c.x, select(var_1.x, false, global0.c.x), !var_1.x));
    return Struct_2(-(-_wgslsmith_mod_i32(-2147483647i, 19483i) << (~var_3.d % 32u)), -countOneBits(vec3<i32>(11379i, arg_0.x, -33818i) << (reverseBits(vec3<u32>(48531u, 22179u, u_input.c.x)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    let var_0 = global0.b;
    var var_1 = arg_1.d;
    global0 = Struct_3(~20442u, arg_2, !select(!select(vec3<bool>(true, true, var_0.c.x), arg_2.c.xyy, var_0.c.x), vec3<bool>(global0.c.x, false, !arg_2.e.x), global0.b.c.yww));
    global0 = Struct_3(countOneBits(1u << (firstTrailingBit(26611u) % 32u)), Struct_1(!select(true, var_0.e.x, all(arg_2.e.xxw)), ~countOneBits(-vec4<i32>(-15645i, -8961i, arg_3.x, 2147483647i)), vec4<bool>(!any(arg_2.e.xxx), true, true, true), 0u, vec4<bool>(!any(vec3<bool>(false, arg_2.c.x, arg_2.e.x)), any(select(vec2<bool>(false, arg_1.b.a), vec2<bool>(true, false), true)), false, arg_2.e.x)), !vec3<bool>(true, func_3(!vec4<bool>(arg_2.a, false, true, arg_1.b.e.x)), !(!arg_1.a.a)));
    var_1 = func_2(arg_1.c.b.b.xx);
    return 2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<i32>(2147483647i, -44433i, func_4(func_2(abs(vec2<i32>(29763i, -2419i))), Struct_4(arg_1, arg_1, Struct_3(global0.b.d, Struct_1(arg_0, arg_1.b, arg_1.c, u_input.c.x, arg_1.c), arg_1.e.yxx), func_2(vec2<i32>(arg_1.b.x, -26550i))), Struct_1(any(vec4<bool>(arg_0, true, global0.b.c.x, arg_0)) || any(vec3<bool>(true, arg_1.c.x, true)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(26559i, 16160i, global0.b.b.x, u_input.a), vec4<i32>(arg_2, -1i, -9849i, arg_1.b.x)), vec4<bool>(!arg_0, true, true, true), 1u, !select(vec4<bool>(false, true, false, true), global0.b.e, arg_1.c)), vec2<i32>(-1i, 13307i)));
    let var_1 = vec3<i32>(i32(-1i) * -(~(-arg_2)), ~firstTrailingBit(u_input.b), 0i);
    let var_2 = select(2147483647i, global0.b.b.x, all(!(!vec3<bool>(false, global0.b.c.x, false)))) ^ arg_1.b.x;
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~26072u, 30u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(884f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10403u, 30u)] - global1[_wgslsmith_index_u32(global0.b.d, 30u)])))) - vec3<f32>(-1043f, global1[_wgslsmith_index_u32(0u, 30u)], 1499f));
    return Struct_1(any(select(!(!vec4<bool>(true, var_3.e.x, arg_0, global0.b.c.x)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(var_3.a, var_3.a, false, true), all(vec4<bool>(arg_1.e.x, var_3.a, true, var_3.c.x))))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, 46769i, reverseBits(var_0.x << (arg_1.d % 32u)), global0.b.b.x), ~(-arg_1.b)), vec4<bool>(arg_0 || true, func_3(select(var_3.e, var_3.c, var_2 <= 1i)), all(!vec3<bool>(var_3.a, false, global0.c.x)), true), ~(~arg_1.d), vec4<bool>(all(var_3.e.yw), arg_1.a, !var_3.e.x, true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_1((global0.a > u_input.c.x) & true, global0.b, arg_0.b.x);
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    var var_1 = Struct_4(Struct_1(arg_3.x, global0.b.b | min(var_0.b, ~vec4<i32>(10416i, -2147483647i, -51298i, -30687i)), vec4<bool>(var_0.e.x, arg_2.x, true, arg_0.e.x), ~u_input.c.x, arg_2), global0.b, Struct_3(_wgslsmith_sub_u32(4294967295u, ~arg_0.d), var_0, vec3<bool>(firstTrailingBit(var_0.d) == _wgslsmith_add_u32(u_input.c.x, arg_0.d), func_3(vec4<bool>(false, arg_2.x, true, false)), any(vec4<bool>(arg_0.c.x, arg_2.x, arg_3.x, false)))), arg_1);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~5881u, 30u)])) >= 750f;
    return func_1(!arg_3.x, var_0, -(~0i));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_0.b.b.zz;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)))))));
    var_0 = global0.b.b.xx;
    var var_2 = Struct_4(func_1(false, arg_2, ~0i), Struct_1(func_5(global0.b, Struct_2(1i, ~global0.b.b.www), vec4<bool>(true, false, true, u_input.c.x == 0u), arg_2.c.yyw).c.x, -global0.b.b, global0.b.e, ~func_1(38496i <= global0.b.b.x, Struct_1(global0.b.a, vec4<i32>(-20343i, var_0.x, arg_0.b.b.x, u_input.b), vec4<bool>(true, true, true, global0.b.c.x), arg_0.b.d, vec4<bool>(true, arg_0.c.x, arg_1.x, arg_0.c.x)), arg_2.b.x ^ global0.b.b.x).d, global0.b.e), Struct_3(global0.a << (arg_0.a % 32u), Struct_1(all(func_5(arg_0.b, Struct_2(1i, vec3<i32>(global0.b.b.x, arg_2.b.x, -1i)), arg_2.e, vec3<bool>(false, global0.c.x, false)).e), arg_2.b, vec4<bool>(select(true, false, arg_2.c.x), global0.b.a, true, true), abs(23856u), vec4<bool>(any(vec3<bool>(true, false, true)), select(false, false, arg_1.x), arg_2.c.x, any(vec3<bool>(arg_2.a, true, true)))), func_5(Struct_1(global0.b.a, vec4<i32>(arg_0.b.b.x, -1i, arg_0.b.b.x, 1i), !vec4<bool>(global0.c.x, true, false, arg_1.x), 1u, func_1(false, Struct_1(true, arg_0.b.b, vec4<bool>(false, false, false, true), 4294967295u, arg_0.b.c), var_0.x).c), func_2(countOneBits(vec2<i32>(28268i, -2147483647i))), !arg_0.b.c, select(!vec3<bool>(true, global0.b.e.x, true), select(vec3<bool>(true, false, arg_1.x), arg_2.e.zyx, global0.c), false)).c.zzw), Struct_2(1i, arg_2.b.xzz));
    var_1 = global1[_wgslsmith_index_u32(1u, 30u)];
    return Struct_3(var_2.b.d, Struct_1(arg_1.x, vec4<i32>(global0.b.b.x, arg_0.b.b.x, ~(-3545i), global0.b.b.x), func_1(func_1(true, func_5(Struct_1(global0.b.c.x, var_2.b.b, vec4<bool>(var_2.c.b.a, false, true, true), 0u, arg_2.c), Struct_2(global0.b.b.x, vec3<i32>(var_2.a.b.x, -2147483647i, -10532i)), vec4<bool>(true, arg_1.x, var_2.c.c.x, global0.b.a), arg_0.b.c.yxw), -1i).e.x, Struct_1(false, vec4<i32>(1i, global0.b.b.x, -2147483647i, global0.b.b.x), vec4<bool>(false, var_2.c.c.x, arg_2.c.x, global0.c.x), 1u, !vec4<bool>(false, false, arg_0.c.x, false)), 1i).c, _wgslsmith_div_u32(29608u, ~u_input.c.x), vec4<bool>(false, max(16325u, u_input.c.x) == abs(0u), all(vec4<bool>(var_2.a.e.x, false, var_2.b.c.x, global0.b.c.x)), func_3(!var_2.b.c))), !(!var_2.b.e.zwy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_3(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.a, u_input.c.x), ~abs(0u)), func_5(func_1(false, global0.b, global0.b.b.x), func_2(-global0.b.b.xx), !global0.b.c, !(!global0.b.c.xxw)), vec3<bool>(!any(vec3<bool>(global0.b.a, true, global0.b.c.x)), any(global0.b.e.xyw), global1[_wgslsmith_index_u32(u_input.c.x, 30u)] > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 30u)]))), select(!global0.b.e.zyx, !global0.c, vec3<bool>(!all(vec3<bool>(true, global0.b.e.x, global0.c.x)), false, any(!vec3<bool>(true, global0.c.x, global0.b.a)))), global0.b);
    let var_0 = func_2(-func_2(abs(vec2<i32>(global0.b.b.x, 0i))).b.yy);
    var var_1 = func_2(vec2<i32>(func_2(min(var_0.b.xy, global0.b.b.zz)).b.x, ~(~select(14418i, -5741i, true))));
    let var_2 = true;
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~abs(121925u), 30u)]), -832f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-523f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 30u)])), 320f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(u_input.c.x), 30u)], -155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(44028u, 30u)])))));
}

