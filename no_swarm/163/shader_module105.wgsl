struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<f32, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec4<i32> {
    global2 = array<Struct_1, 6>();
    return ~reverseBits(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, -36754i)), ~vec4<i32>(0i, u_input.a, -2147483647i, -6472i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 44864i, u_input.a, 38255i), vec4<i32>(11236i, -2147483647i, u_input.a, -9241i))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    let var_0 = true;
    var var_1 = vec4<bool>(all(vec4<bool>((1i << (arg_0.x % 32u)) > countOneBits(2082i), false, false, false)), true, false, !any(!(!vec4<bool>(var_0, var_0, var_0, false))));
    global1 = array<vec3<bool>, 13>();
    var var_2 = arg_2;
    return Struct_3(global2[_wgslsmith_index_u32(firstLeadingBit(min(firstTrailingBit(arg_2), _wgslsmith_clamp_u32(arg_2, arg_0.x, 35864u)) << (arg_0.x % 32u)), 6u)], arg_0, select(vec2<bool>((1u != arg_0.x) && true, arg_0.x == firstLeadingBit(arg_2)), !select(!var_1.zw, !var_1.yw, true), !(!vec2<bool>(var_0, var_0))), Struct_2(global2[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1198f))));
}

fn func_1(arg_0: Struct_5) -> vec3<i32> {
    var var_0 = func_3(_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.b, 53969u), vec3<u32>(104162u, arg_0.a, 4294967295u)), 50011u & u_input.b, _wgslsmith_sub_u32(0u, arg_0.a), u_input.b), ~select(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), vec4<u32>(arg_0.a, 98638u, u_input.b, arg_0.a), true) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, u_input.b, 92425u, 64629u), vec4<u32>(arg_0.a, 63629u, arg_0.a, arg_0.a)) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, u_input.b, u_input.b, 1u), vec4<u32>(arg_0.a, 105259u, arg_0.a, 4294967295u))) % vec4<u32>(32u))), func_2(), reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(34250u, u_input.b), vec2<u32>(u_input.b, 33534u)), vec2<u32>(arg_0.a, 19510u)) % 32u)));
    global1 = array<vec3<bool>, 13>();
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(firstTrailingBit(7712u), 6u)], ~vec4<u32>(13061u, ~8151u, abs(~1u), func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 1u), var_0.b), vec4<i32>(0i, 0i, var_0.a.d, var_0.d.a.a), 1u).d.a.c.x), vec2<bool>(var_0.c.x, false), var_0.d, _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(899f + -387f)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.d.a.b, var_0.d.a.c.x), var_0.b), 19u)]))));
    return _wgslsmith_mult_vec3_i32(-abs(vec3<i32>(102i, var_1.a.d, abs(0i))), ~(vec3<i32>(_wgslsmith_add_i32(u_input.a, 54547i), 0i, -var_1.a.d) ^ reverseBits(vec3<i32>(var_0.a.d, var_1.d.a.a, -45219i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~select(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, 1i, 2147483647i), vec4<i32>(u_input.a, u_input.a, 2827i, 12782i))), min(-vec4<i32>(1i, 26753i, 2147483647i, -1i), vec4<i32>(u_input.a, 48541i, -2147483647i, u_input.a)), any(vec3<bool>(true, true, true)) || true));
    var var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(func_1(Struct_5(u_input.b)), ~min(var_0.yzx, var_0.wwx))), select(vec3<i32>(1i, var_0.x, ~(-1i | u_input.a)), _wgslsmith_mod_vec3_i32(-(vec3<i32>(var_0.x, 42630i, u_input.a) << (vec3<u32>(43439u, 0u, 86943u) % vec3<u32>(32u))), select(vec3<i32>(-6165i, u_input.a, u_input.a), vec3<i32>(var_0.x, var_0.x, -26978i), select(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(u_input.b, 13u)], false))), true || !(u_input.b != u_input.b)), vec3<i32>(min(-44452i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 10626i, -2147483647i), max(u_input.a, u_input.a))), var_0.x ^ max(-15511i, var_0.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-49848i, -37297i, 54379i), var_0.zyx), var_0.zzx, abs(vec3<i32>(var_0.x, 37124i, var_0.x))), vec3<i32>(var_0.x | -1i, _wgslsmith_div_i32(u_input.a, 2147483647i), var_0.x))));
    var var_2 = -3173i;
    var var_3 = _wgslsmith_mult_i32(var_0.x, i32(-1i) * -11086i);
    let var_4 = func_3(~vec4<u32>(~firstTrailingBit(78552u), ~func_3(vec4<u32>(1u, 15039u, 22678u, 4294967295u), vec4<i32>(var_1.x, var_0.x, var_1.x, var_0.x), u_input.b).d.a.b, select(~u_input.b, 0u ^ u_input.b, false), _wgslsmith_mult_u32(0u, ~4294967295u)), vec4<i32>(firstLeadingBit(var_0.x), _wgslsmith_add_i32(-select(1i, u_input.a, true), ~_wgslsmith_mod_i32(var_0.x, var_1.x)), var_0.x, var_1.x), u_input.b).c.x;
    let var_5 = vec2<u32>(~(~_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b >> (22389u % 32u))), _wgslsmith_mult_u32(firstLeadingBit(~(~u_input.b)), max(u_input.b, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.b, u_input.b), vec4<u32>(0u, 0u, 4294967295u, u_input.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 19u)] - global3[_wgslsmith_index_u32(1u, 19u)]) * global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, 1u), 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-386f)))), _wgslsmith_f_op_f32(1315f - 1259f)), -38775i, vec3<u32>(21230u, u_input.b, var_5.x), -var_0.yw, vec4<i32>(-1i, -func_3(~vec4<u32>(u_input.b, 1u, 1037u, 1u), vec4<i32>(var_1.x, var_0.x, -1704i, -1i), func_3(vec4<u32>(0u, 0u, u_input.b, 9009u), vec4<i32>(var_1.x, 32557i, 8723i, 6341i), u_input.b).a.b).a.a, -29878i, firstLeadingBit(-1i)));
}

