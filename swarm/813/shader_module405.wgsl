struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec4<f32> = vec4<f32>(812f, -114f, -588f, -604f);

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(34422u, 4294967295u, 7972u, 0u), vec4<u32>(5562u, 4294967295u, 0u, 85424u), vec4<u32>(41025u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(0u, 4294967295u, 50648u, 4294967295u), vec4<u32>(4294967295u, 66473u, 4294967295u, 52297u), vec4<u32>(4294967295u, 0u, 21638u, 4294967295u), vec4<u32>(13100u, 13759u, 0u, 23880u), vec4<u32>(2527u, 4294967295u, 1u, 0u), vec4<u32>(1u, 4294967295u, 52144u, 45144u), vec4<u32>(1477u, 1u, 16715u, 5902u), vec4<u32>(7576u, 23745u, 23136u, 4294967295u), vec4<u32>(77043u, 1u, 0u, 4294967295u), vec4<u32>(0u, 0u, 108857u, 8073u), vec4<u32>(1u, 1u, 6025u, 49698u), vec4<u32>(21677u, 24682u, 20687u, 0u), vec4<u32>(1u, 20174u, 1u, 58154u), vec4<u32>(1u, 1u, 46930u, 0u), vec4<u32>(51255u, 4294967295u, 0u, 61893u), vec4<u32>(0u, 0u, 114860u, 0u), vec4<u32>(1u, 5320u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 61352u, 62856u), vec4<u32>(28607u, 1u, 0u, 0u), vec4<u32>(4294967295u, 1265u, 1u, 23704u), vec4<u32>(16155u, 47559u, 20459u, 4294967295u), vec4<u32>(29229u, 82185u, 118804u, 23225u), vec4<u32>(1u, 20709u, 94856u, 11661u), vec4<u32>(38743u, 4294967295u, 22503u, 53473u), vec4<u32>(56266u, 32582u, 4294967295u, 0u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> vec2<i32> {
    return select(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(countOneBits(u_input.b), u_input.b), _wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 8004i), countOneBits(vec2<i32>(-2147483647i, u_input.b)))), -abs(select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, 0i), vec2<bool>(arg_1, false)))), ~(-(vec2<i32>(1i, u_input.b) ^ vec2<i32>(u_input.b, 26281i))), select(arg_2.xz, !select(arg_2.yy, !arg_2.zx, arg_2.x), (arg_1 == true) | any(!vec2<bool>(arg_1, arg_2.x))));
}

fn func_2(arg_0: vec4<bool>) -> vec4<f32> {
    let var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1628f + _wgslsmith_f_op_f32(-global2.x))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(230f))), -474f))) | false;
    let var_1 = Struct_4(global2.yzy, -2147483647i, Struct_2(-func_3(u_input.a.x, u_input.b > 40060i, vec3<bool>(true, var_0, var_0)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i)) & ~43335i, global2.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -842f, global2.x, global2.x)))), arg_0.zzz, vec3<bool>(any(arg_0), !(!arg_0.x), all(arg_0.wy)), Struct_1(firstLeadingBit(-47146i), vec2<f32>(_wgslsmith_f_op_f32(global2.x - -569f), -1000f), vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(683f * -359f), _wgslsmith_f_op_f32(-1006f - 841f)))));
    let var_2 = global2.x;
    return var_1.c.e.c;
}

fn func_1() -> Struct_5 {
    var var_0 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))));
    var_0 = global2.yz;
    global0 = array<vec3<i32>, 17>();
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, var_0.x, 2075f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, var_0.x, -1956f, var_0.x)), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(false, false, false, true))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(245f, global2.x, global2.x, -284f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1608f, global2.x, global2.x, var_0.x), vec4<f32>(var_0.x, global2.x, var_0.x, var_0.x)))));
    var var_1 = select(vec4<bool>(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, false, true, false)) | true, var_0.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1000f)), select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)), any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)))), vec4<bool>(true, false, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(~u_input.a.x < 4294967295u)), 476f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global2.x)) * -2299f));
    return Struct_5(Struct_3(countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(650i, -55310i, u_input.b, -2147483647i), -vec4<i32>(u_input.b, u_input.b, u_input.b, -5744i), vec4<i32>(2147483647i, u_input.b, -45122i, 0i) >> (global3[_wgslsmith_index_u32(u_input.a.x, 30u)] % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1307f, 1334f, -427f, 803f) * vec4<f32>(var_0.x, var_0.x, var_0.x, 440f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 685f, -1352f)))))), u_input.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(select(14330u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, max(7385u, u_input.a.x)), u_input.a.x), u_input.a.x), any(vec3<bool>((u_input.a.x > u_input.a.x) | select(true, false, false), false, all(vec2<bool>(true, true))))), 30u)];
    var var_1 = arg_1;
    var var_2 = vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true))));
    var_2 = vec2<bool>(any(select(!vec4<bool>(var_2.x, false, false, true), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x), false), vec4<bool>(true, var_2.x, true, false), !var_2.x), !select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, false), var_2.x))), false);
    var var_3 = Struct_4(var_1.a.b.www, u_input.b, Struct_2(vec2<i32>(abs(arg_1.b), -_wgslsmith_dot_vec3_i32(vec3<i32>(-17320i, u_input.b, -26831i), global0[_wgslsmith_index_u32(0u, 17u)])), Struct_1(_wgslsmith_add_i32(2147483647i, 2147483647i >> (u_input.a.x % 32u)), var_1.a.b.zy, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.b.x, var_1.a.b.x, -123f, var_1.a.b.x)))), select(select(vec3<bool>(false, var_2.x, true), select(vec3<bool>(var_2.x, true, false), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, true)), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, false, var_2.x), true)), vec3<bool>(any(vec2<bool>(false, var_2.x)), var_2.x, arg_1.b >= -1i), vec3<bool>(var_2.x | true, false | var_2.x, var_2.x)), select(vec3<bool>(var_2.x && true, false, true), vec3<bool>(var_2.x, -671f >= var_1.a.b.x, true), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(false, var_2.x, false), vec3<bool>(true, var_2.x, var_2.x), var_2.x))), global1[_wgslsmith_index_u32(~9843u, 30u)]));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-2476f - var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.x)))) * global2.x), -1503f, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -508f)))))), vec4<f32>(_wgslsmith_f_op_f32(-734f * global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1188f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec4<i32>(-14518i, u_input.b, 0i, 2147483647i), vec4<f32>(-559f, global2.x, -948f, -449f)), func_1()))), global2.x));
    var var_0 = Struct_5(func_1().a, u_input.b);
    let var_1 = var_0.a.b.xz;
    var var_2 = Struct_3(var_0.a.a, var_0.a.b);
    global3 = array<vec4<u32>, 30>();
    let var_3 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec2<bool>(false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, any(vec4<bool>(true, false, true, true)))), vec3<bool>(false, false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), !(var_2.a.x != reverseBits(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a.a.wy, var_0.a.a.xw), -(~(-2147483647i)), 50969i, _wgslsmith_add_i32(var_2.a.x | 26416i, var_0.b)), var_0.a.a, vec4<bool>(true & all(vec4<bool>(true, true, var_3.x, var_3.x)), var_3.x, var_3.x && any(var_3.yz), var_3.x)), ~u_input.a.x);
}

