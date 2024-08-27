struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: array<f32, 26>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(777f, vec2<u32>(0u, 0u), false), Struct_1(1130f, vec2<u32>(16233u, 0u), false), Struct_1(972f, vec2<u32>(24153u, 37599u), true), Struct_1(433f, vec2<u32>(31836u, 0u), true), Struct_1(1279f, vec2<u32>(0u, 1u), true), Struct_1(-2346f, vec2<u32>(4294967295u, 52215u), false), Struct_1(3072f, vec2<u32>(0u, 1u), true), Struct_1(-585f, vec2<u32>(1u, 9108u), false), Struct_1(-329f, vec2<u32>(6940u, 9010u), false), Struct_1(-302f, vec2<u32>(0u, 36072u), false), Struct_1(2728f, vec2<u32>(19938u, 1u), false), Struct_1(-1000f, vec2<u32>(24024u, 100878u), true), Struct_1(-347f, vec2<u32>(988u, 0u), true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<f32>(-1423f, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a.x, 41577u, 133810u) & vec3<u32>(u_input.b, 1u, 45601u)) >> (u_input.a.yzx % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~u_input.a.zww, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.a.x), u_input.a.zzz, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)))), 26u)]);
    let var_1 = vec3<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !select(true, u_input.c.x < abs(u_input.c.x), false), any(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)));
    global1 = false;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(min(u_input.b, 0u), 26u)]))));
    let var_3 = u_input.a.x;
    return _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(u_input.c, reverseBits(max(vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 1i))), select(!var_1, var_1, !vec3<bool>(false, false, var_1.x))), max(-(~vec3<i32>(-1i, 9496i, u_input.c.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(43413i, 1i, u_input.c.x), u_input.c))), (vec3<i32>(1i, u_input.c.x ^ u_input.c.x, 8595i) >> (u_input.a.xyx % vec3<u32>(32u))) << (select(u_input.a.ywx, select(firstTrailingBit(u_input.a.xyz), abs(vec3<u32>(u_input.d, 6161u, var_3)), var_1.x | var_1.x), var_1) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(firstLeadingBit(2762i), u_input.c.x, -u_input.c.x) << (u_input.a.yww % vec3<u32>(32u))), ~(~func_3()));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), 676f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(-1331f, arg_0.x, true))))))), _wgslsmith_mod_vec2_u32(~(~arg_1), firstTrailingBit(_wgslsmith_div_vec2_u32(arg_1, arg_1)) & vec2<u32>(u_input.d >> (132721u % 32u), 1u)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))))));
    global0 = u_input.b;
    global4 = array<Struct_1, 13>();
    let var_2 = !all(select(!(!vec3<bool>(true, var_1.c, true)), !select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(true, var_1.c, true), vec3<bool>(false, true, var_1.c)), select(select(vec3<bool>(false, true, var_1.c), vec3<bool>(var_1.c, var_1.c, true), var_1.c), vec3<bool>(true, true, true), !vec3<bool>(var_1.c, var_1.c, var_1.c))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c.x, arg_1.x, 1i), -_wgslsmith_add_vec3_i32(max(vec3<i32>(-2147483647i, 0i, arg_1.x), u_input.c), vec3<i32>(arg_1.x, 2147483647i, arg_1.x)), arg_0.c), arg_1.wzz | vec3<i32>(reverseBits(-2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, 100506i), vec2<i32>(24347i, -63175i)), _wgslsmith_mod_vec2_i32(vec2<i32>(33784i, -15245i), vec2<i32>(26384i, arg_1.x))), _wgslsmith_mod_i32(33540i, u_input.c.x) ^ u_input.c.x));
    let var_1 = _wgslsmith_clamp_vec3_i32(~(_wgslsmith_mod_vec3_i32(func_2(vec4<f32>(-191f, global2[_wgslsmith_index_u32(arg_0.b.x, 26u)], 1205f, arg_0.a), vec2<u32>(u_input.a.x, arg_0.b.x), u_input.d), vec3<i32>(-19281i, u_input.c.x, u_input.c.x) ^ vec3<i32>(u_input.c.x, u_input.c.x, arg_1.x)) & (vec3<i32>(arg_1.x, -18133i, arg_1.x) & min(arg_1.zww, u_input.c))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c.x, firstTrailingBit(62814i), -u_input.c.x), u_input.c), ~vec3<i32>(-arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), arg_1.xy), ~arg_1.x) | min(~vec3<i32>(-2147483647i, u_input.c.x, -25571i), vec3<i32>(-44775i, 2147483647i, -23978i)));
    global4 = array<Struct_1, 13>();
    let var_2 = _wgslsmith_mod_vec3_u32(~u_input.a.yyy, _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.d) ^ 4294967295u, arg_0.b.x, ~53997u), u_input.a.yyw));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(135653u, 26u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 26u)]), 1f, _wgslsmith_f_op_f32(round(-450f))))));
    return StorageBuffer(~1u, -22104i, _wgslsmith_div_u32(~max(_wgslsmith_mult_u32(arg_0.b.x, var_2.x), ~0u), 33207u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(16109u, 26u)], 1536f))), u_input.a.wx << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), true), min(vec4<i32>(-16969i, u_input.c.x, -(u_input.c.x << (4294967295u % 32u)), u_input.c.x), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), 24531i), -62706i, ~u_input.c.x, 0i)));
}

