struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 10>;

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(false, vec4<u32>(4294967295u, 4294967295u, 51954u, 24772u)), Struct_3(true, vec4<u32>(0u, 42329u, 51712u, 4294967295u)), Struct_3(true, vec4<u32>(12799u, 4294967295u, 9176u, 4294967295u)), Struct_3(true, vec4<u32>(4294967295u, 4294967295u, 1u, 45228u)), Struct_3(false, vec4<u32>(4294967295u, 77699u, 0u, 39387u)), Struct_3(true, vec4<u32>(0u, 43471u, 251u, 1u)), Struct_3(true, vec4<u32>(1491u, 4294967295u, 115974u, 24455u)), Struct_3(true, vec4<u32>(55224u, 18805u, 0u, 14801u)), Struct_3(true, vec4<u32>(17466u, 25166u, 0u, 24325u)), Struct_3(true, vec4<u32>(27612u, 14162u, 0u, 4294967295u)), Struct_3(false, vec4<u32>(36728u, 71915u, 1184u, 4294967295u)));

var<private> global3: array<i32, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -994f)), _wgslsmith_f_op_f32(555f + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-161f)) - -234f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(510f, _wgslsmith_f_op_f32(arg_0.x - 1543f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-195f + arg_0.x))), _wgslsmith_div_f32(-1198f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 804f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(608f)) * _wgslsmith_div_f32(-1035f, arg_0.x)))));
    let var_1 = Struct_3(arg_1.a, select(~vec4<u32>(~4294967295u, countOneBits(2381u), ~4294967295u, ~u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, arg_1.b.x), !(!(!vec4<bool>(true, arg_1.a, true, arg_1.a)))));
    global2 = array<Struct_3, 11>();
    let var_2 = Struct_1(arg_0.x, vec4<i32>(-1i) * -(~vec4<i32>(global3[_wgslsmith_index_u32(var_1.b.x, 8u)], -34067i, arg_2.x, arg_2.x)), arg_0, !select(!select(vec3<bool>(arg_1.a, true, false), vec3<bool>(arg_1.a, true, var_1.a), false), vec3<bool>(true, true, var_0.x <= var_0.x), !vec3<bool>(false, true, var_1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, 1000f, arg_0.x, arg_0.x) - var_0), vec4<f32>(var_0.x, 482f, var_0.x, var_0.x), all(vec2<bool>(true, arg_1.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1203f, arg_0.x, 559f), var_0) + var_0)))));
    global2 = array<Struct_3, 11>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-308f, 789f, -670f, 1048f), var_0)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, var_2.e.x, _wgslsmith_f_op_f32(-282f - 408f), _wgslsmith_f_op_f32(arg_0.x + var_0.x))), select(!vec4<bool>(arg_1.a, var_2.d.x, var_2.d.x, arg_1.a), select(vec4<bool>(false, var_2.d.x, true, true), !vec4<bool>(var_2.d.x, true, var_1.a, arg_1.a), !vec4<bool>(true, true, false, var_2.d.x)), true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, -1348f, 2671f, var_0.x)), var_2.e) + vec4<f32>(var_0.x, _wgslsmith_div_f32(var_2.c.x, -992f), _wgslsmith_f_op_f32(var_0.x + arg_0.x), _wgslsmith_f_op_f32(-var_2.e.x))))), select(!vec4<bool>(true, arg_1.a, select(true, var_1.a, false), true), select(vec4<bool>(all(vec2<bool>(arg_1.a, var_1.a)), false, any(var_2.d), false), !select(vec4<bool>(false, var_2.d.x, var_2.d.x, arg_1.a), vec4<bool>(var_2.d.x, false, var_2.d.x, true), vec4<bool>(false, var_1.a, var_2.d.x, var_1.a)), !any(var_2.d.yy)), !select(vec4<bool>(false, var_1.a, var_2.d.x, var_2.d.x), vec4<bool>(arg_1.a, true, var_1.a, true), all(vec4<bool>(var_2.d.x, false, true, arg_1.a))))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-699f, -1510f)))), vec4<i32>(-4494i, 21870i, 0i, _wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(~u_input.a.x, 8u)], -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, -1070f, -241f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(976f, -1070f, 526f) * vec3<f32>(-649f, 361f, -830f))))), !(!arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(464f, 475f, 692f, -1955f) - vec4<f32>(-898f, 868f, -1390f, 1263f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-377f, -289f, -1790f, -1622f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, -309f, -2066f, 114f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-960f, -667f, 255f, 1193f), vec4<f32>(-335f, -1000f, 1000f, 818f), vec4<bool>(arg_0.x, false, false, false))) - vec4<f32>(430f, -2530f, 134f, 390f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(var_0.e.yzy, global2[_wgslsmith_index_u32(0u, 11u)], vec3<i32>(-40942i, 25555i, var_0.b.x & reverseBits(var_0.b.x << (u_input.a.x % 32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1549f * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -212f))))))), vec4<i32>(global3[_wgslsmith_index_u32(36488u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], ~(-(~global3[_wgslsmith_index_u32(u_input.a.x, 8u)])), global3[_wgslsmith_index_u32(~66133u, 8u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.zyx)))), vec3<f32>(var_0.a, 707f, var_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, var_0.c.x) - var_0.e.x) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<bool>(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(503f)))) <= var_0.e.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)));
    global1 = array<Struct_2, 10>();
    global3 = array<i32, 8>();
    return global3[_wgslsmith_index_u32(u_input.a.x, 8u)];
}

fn func_4(arg_0: bool, arg_1: i32) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(~4539u, 10u)];
    let var_1 = var_0.a.x;
    var var_2 = 1u;
    global0 = false;
    var var_3 = -131f;
    return select(!(!(!(!vec4<bool>(false, arg_0, false, false)))), select(select(vec4<bool>(arg_0, true, true && var_0.d, true), select(vec4<bool>(var_0.d, arg_0, true, var_0.d), vec4<bool>(arg_0, true, true, false), arg_0), vec4<bool>(true, true, !var_0.d, any(vec3<bool>(false, false, true)))), vec4<bool>((global3[_wgslsmith_index_u32(54068u, 8u)] >> (23316u % 32u)) < (i32(-1i) * -14833i), all(vec4<bool>(var_0.d, false, true, var_0.d)), arg_0, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0, var_0.d, arg_0), vec4<bool>(var_0.d, arg_0, arg_0, arg_0)))), true), !vec4<bool>(false, !(!arg_0), false, false));
}

fn func_1() -> f32 {
    global3 = array<i32, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-743f)), _wgslsmith_f_op_f32(-1543f - -1000f), -856f), vec3<f32>(_wgslsmith_f_op_f32(-625f + -143f), -567f, _wgslsmith_f_op_f32(-1041f + -1161f)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1860f, 565f, -862f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, 486f, -853f))))));
    let var_1 = any(select(select(vec4<bool>(false, true, u_input.a.x > 30504u, true), func_4(12572u <= u_input.a.x, func_2(vec3<bool>(false, true, false))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true)), vec4<bool>(select(var_0.x > var_0.x, true, true), any(vec2<bool>(true, true)), true, false), !vec4<bool>(true, all(vec2<bool>(false, true)), u_input.a.x < 86553u, -992i < global3[_wgslsmith_index_u32(12468u, 8u)])));
    let var_2 = 40i;
    let var_3 = ~var_2 & ~(~_wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(0u, 8u)], var_2), global3[_wgslsmith_index_u32(u_input.a.x, 8u)]));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -624f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(124f + _wgslsmith_f_op_f32(f32(-1f) * -1527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), any(func_4(false, -43624i).zx)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 11>();
    var var_0 = Struct_5(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, global3[_wgslsmith_index_u32(90678u, 8u)]), vec2<i32>(-19256i, -3717i), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(9716i, global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]))), abs(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -50925i))), abs(vec2<i32>(global3[_wgslsmith_index_u32(1u, 8u)], 38749i) & vec2<i32>(8230i, global3[_wgslsmith_index_u32(24733u, 8u)])) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 42137u), vec2<u32>(33570u, 48856u), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), -334f, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-1529f, 689f, -755f), vec3<bool>(false, true, false))), Struct_3(true, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)), max(~vec3<i32>(-45921i, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -19750i), vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)])))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-704f))))));
    var_0 = Struct_5((var_0.a | var_0.a) | reverseBits(var_0.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), var_0.b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(var_0.b)))))))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1466f, var_0.b.x), vec2<f32>(-835f, -3036f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * -1618f), -566f), vec2<f32>(_wgslsmith_f_op_f32(step(285f, var_0.b.x)), _wgslsmith_f_op_f32(step(-120f, var_0.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-var_0.b.wx), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(948f)), -2056f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-70849i, var_0.a.x, -33211i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0.a.x, var_0.a.x)), -14696i, _wgslsmith_mult_i32(i32(-1i) * -18700i, 4805i)), ~vec3<i32>(25300i & global3[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0.a.x << (1u % 32u), _wgslsmith_div_i32(var_0.a.x, global3[_wgslsmith_index_u32(0u, 8u)]))), -vec2<i32>(firstTrailingBit(-502i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -12400i, global3[_wgslsmith_index_u32(22956u, 8u)]), vec3<i32>(2147483647i, 45097i, 0i))), _wgslsmith_f_op_vec4_f32(-var_0.b), -1i);
}

