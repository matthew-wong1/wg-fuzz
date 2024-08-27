struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-158f, 1000f, 284f), vec3<f32>(-1602f, -252f, -1075f), vec3<f32>(142f, 1232f, 409f), vec3<f32>(-1712f, 1000f, 298f), vec3<f32>(-1000f, -280f, -1196f), vec3<f32>(-1655f, -1238f, 693f), vec3<f32>(1084f, 952f, -459f), vec3<f32>(-360f, -1719f, -1901f), vec3<f32>(-199f, -940f, 450f), vec3<f32>(417f, 2324f, -1449f), vec3<f32>(1217f, -1239f, -191f), vec3<f32>(267f, -1407f, 1385f), vec3<f32>(1011f, -636f, -2366f), vec3<f32>(-1000f, -542f, 443f), vec3<f32>(169f, -1000f, -1121f), vec3<f32>(-198f, 1019f, 1000f), vec3<f32>(610f, 365f, 513f), vec3<f32>(-1610f, 729f, 435f));

var<private> global1: vec2<i32> = vec2<i32>(5120i, 38631i);

var<private> global2: array<vec4<f32>, 7>;

var<private> global3: Struct_1;

var<private> global4: array<i32, 8> = array<i32, 8>(1i, 9953i, 1i, -35512i, 1i, -15279i, 60661i, -23706i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = ~_wgslsmith_mod_vec2_i32(global3.b.xx >> ((vec2<u32>(u_input.a, 0u) | firstTrailingBit(vec2<u32>(4294967295u, arg_2))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_0.b.x) ^ abs(vec2<i32>(0i, arg_0.b.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(global1.x, -45470i), vec2<i32>(global3.b.x, global1.x))));
    global1 = vec2<i32>(49929i, -2147483647i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec3<i32>(-68289i, ~(~(var_0.b.x | -1i)), _wgslsmith_dot_vec2_i32(arg_0.b.yz, vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -15137i, -79928i), 0i))));
    var_1 = var_0.b.xy;
    return vec2<bool>(!(all(vec4<bool>(true, false, false, false)) | true) && true, all(vec4<bool>(true, false, true, true)));
}

fn func_2() -> vec2<bool> {
    let var_0 = vec4<f32>(global3.a, _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a))) + _wgslsmith_f_op_f32(min(304f, global3.a)))), -1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(round(global3.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1214f)), global3.a)) + 864f), global3.b);
    global1 = abs(_wgslsmith_sub_vec2_i32(max(vec2<i32>(~(-1i), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 0u, u_input.a)), 8u)]), ~global3.b.yz ^ abs(vec2<i32>(-7684i, global3.b.x))), global3.b.xy << (~(~vec2<u32>(0u, 15046u)) % vec2<u32>(32u))));
    global4 = array<i32, 8>();
    global1 = global3.b.yy;
    return select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), 0i != reverseBits(global1.x)), func_3(var_1, Struct_1(_wgslsmith_f_op_f32(-135f - -1413f), _wgslsmith_add_vec3_i32(global3.b, var_1.b)), 0u), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))), true);
}

fn func_1() -> i32 {
    var var_0 = vec2<bool>(true || !all(func_2()), true);
    global2 = array<vec4<f32>, 7>();
    let var_1 = i32(-1i) * -4399i;
    var var_2 = ~2147483647i;
    var var_3 = -1488f;
    return global4[_wgslsmith_index_u32(~u_input.a, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = select(vec2<i32>(-1i, func_1()), abs(vec2<i32>(-(~(-16728i)), 131i)), !any(vec2<bool>(false, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(852f)))), global3.b);
    let var_2 = !(!(true != !any(vec3<bool>(true, true, true))));
    global3 = Struct_1(global3.a, global3.b);
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a, ~6855u), 8u)], -21792i, 0i), 2147483647i, _wgslsmith_div_i32(56712i << (var_0 % 32u), (0i & var_1.b.x) | -var_1.b.x)), ~firstLeadingBit(vec3<i32>(-23801i, ~global1.x, ~1i)));
    global4 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.x, global3.b.x, global3.b.x), _wgslsmith_mod_i32(1i, global4[_wgslsmith_index_u32(0u, 8u)]), firstLeadingBit(-25590i), global1.x);
}

