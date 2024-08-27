struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, true, false)));

var<private> global1: vec4<u32> = vec4<u32>(0u, 99458u, 65818u, 0u);

var<private> global2: f32;

var<private> global3: bool;

var<private> global4: array<i32, 14> = array<i32, 14>(-7171i, -18570i, 1i, 2147483647i, i32(-2147483648), -15536i, i32(-2147483648), 2147483647i, i32(-2147483648), 0i, -20345i, 34750i, 0i, -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = -52009i;
    global3 = all(vec3<bool>(true, u_input.b.x > u_input.b.x, true));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(187f, 172f, global1.x > (arg_0.x & arg_0.x))) - 1f);
    let var_1 = select(select(!vec2<bool>(all(vec2<bool>(true, true)), 0u != global1.x), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(false, !any(vec3<bool>(false, true, false))), vec2<bool>(true, all(vec3<bool>(true, true, true))), (reverseBits(global1.x) >= global1.x) & true), !(!vec2<bool>(true, all(vec3<bool>(false, true, false)))));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(1u, u_input.b.x), firstLeadingBit(16350u), global1.x, abs(arg_0.x) & 55254u);
    return _wgslsmith_clamp_vec3_u32(~(~max(vec3<u32>(4294967295u, global1.x, 57284u), vec3<u32>(global1.x, 1u, 0u))), select(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), var_2.xxx) >> (min(vec3<u32>(0u, u_input.b.x, 25242u), vec3<u32>(arg_0.x, 0u, 4294967295u)) % vec3<u32>(32u))), max((global1.yzx & vec3<u32>(1u, 0u, 1u)) ^ (var_2.wyx ^ vec3<u32>(4294967295u, var_2.x, 3348u)), vec3<u32>(global1.x, var_2.x, 1u ^ arg_0.x)), !(!vec3<bool>(var_1.x, var_1.x, true))), countOneBits(firstTrailingBit(var_2.wzw)));
}

fn func_2() -> Struct_1 {
    let var_0 = i32(-1i) * -19723i;
    var var_1 = abs(u_input.b);
    let var_2 = -vec3<i32>(19151i, 0i, var_0);
    var var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(reverseBits(var_2.xy)), var_2.zx >> (reverseBits(select(vec2<u32>(0u, 0u), vec2<u32>(u_input.b.x, 26971u), false)) % vec2<u32>(32u))), ~(var_2.xz ^ var_2.yy));
    global4 = array<i32, 14>();
    return Struct_1(abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x, var_1.x, u_input.b.x), func_3(~global1.xx))), global1.ww, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, _wgslsmith_f_op_f32(f32(-1f) * -238f), -113f) + vec3<f32>(-580f, _wgslsmith_f_op_f32(round(723f)), _wgslsmith_f_op_f32(min(223f, -622f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, 887f, 1505f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(143f, 1482f, 395f) * vec3<f32>(567f, 338f, -520f)))))), 1u);
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    global3 = false;
    var var_0 = Struct_2(func_2(), func_2(), func_2(), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -1000f)))));
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.a.c.x));
    let var_2 = Struct_5(Struct_1(vec3<u32>(~(~global1.x), var_0.b.b.x, ~87280u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~4294967295u), u_input.b, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, var_0.b.b), vec2<u32>(global1.x, u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), -738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.c.x)))), abs(min(1991u | u_input.b.x, ~u_input.b.x))), vec4<bool>(false, true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -2400f), _wgslsmith_f_op_vec2_f32(select(var_0.a.c.xz, _wgslsmith_f_op_vec2_f32(arg_0.wy * vec2<f32>(arg_0.x, -2040f)), vec2<bool>(true, true)))), arg_0.xw));
    var var_3 = func_2();
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.x, func_2().a.x), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 14>();
    let var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(685f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-811f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f)))), -2453f, 315f));
    var var_1 = reverseBits(firstTrailingBit(-reverseBits(-vec2<i32>(89637i, global4[_wgslsmith_index_u32(global1.x, 14u)]))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-429f, _wgslsmith_f_op_f32(abs(func_2().c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(443f, -1490f, var_0.a.x)))))));
    let var_3 = _wgslsmith_mult_vec3_u32(~global1.xwz, ~(abs(global1.yzz | vec3<u32>(15929u, u_input.b.x, 1u)) << (vec3<u32>(u_input.b.x, u_input.b.x, 15724u) % vec3<u32>(32u))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-622f, var_2, -1221f, var_2)))))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1651f, var_2, var_2)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(102f, var_2, -169f, 748f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-303f, var_2, -620f, -449f))), select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(true, false, true, var_0.a.x), var_0.a.x)))))));
    var var_5 = global4[_wgslsmith_index_u32(max(_wgslsmith_add_u32(39753u, global1.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.x, ~global1.x), u_input.b.x)), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~u_input.b.x << (~global1.x % 32u)), ~firstLeadingBit(~abs(1u)), ~(~vec4<i32>(u_input.a, 1i, u_input.a, var_1.x)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, 61279u, 22284u, u_input.b.x) << (vec4<u32>(83728u, global1.x, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 17373u, global1.x, var_3.x) << (vec4<u32>(40589u, var_3.x, 0u, var_3.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_u32(var_3.x, select(6614u, _wgslsmith_clamp_u32(0u, ~global1.x, 57958u), var_0.a.x)), ~reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global4[_wgslsmith_index_u32(global1.x, 14u)], 24408i), vec3<i32>(global4[_wgslsmith_index_u32(24869u, 14u)], 37798i, -22538i))));
}

