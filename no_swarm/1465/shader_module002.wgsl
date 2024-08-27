struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: array<Struct_1, 30>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = 618f;
    global1 = array<Struct_1, 30>();
    var var_1 = ~0u;
    var var_2 = firstLeadingBit(vec4<u32>(18548u, ~(~56331u), 100586u, ~4294967295u));
    let var_3 = abs(reverseBits(-38646i) & min(_wgslsmith_sub_i32(u_input.a.x, max(-27867i, 18289i)), -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))));
    return !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1180f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1431f, 373f)))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -813f)));
    let var_1 = Struct_2(global0.a);
    let var_2 = func_3(~u_input.b.x);
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 30u)];
    global0 = Struct_2(global0.a);
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<bool> {
    global2 = arg_1;
    let var_0 = reverseBits(firstLeadingBit(min(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(150738u, 1u, 4294967295u), vec3<u32>(0u, u_input.c, 63698u), vec3<bool>(global2.a, arg_1.a, global2.a)), vec3<u32>(u_input.c, 30996u, u_input.c), ~vec3<u32>(u_input.b.x, 2143u, u_input.b.x)), ~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)))));
    global0 = Struct_2(all(select(vec3<bool>(!global2.a, false, true), !(!vec3<bool>(true, true, arg_1.a)), false)));
    global1 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(reverseBits(33548i), countOneBits(0i), 1i, max(u_input.a.x, 2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(-u_input.a.x, -41259i, u_input.a.x | 1i), _wgslsmith_sub_i32(~1i, 1009i << (1u % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 0i), ~(2147483647i | u_input.a.x))), min(~max(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x)), min(vec4<i32>(u_input.a.x, -24207i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 29733i, 2147483647i))), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(16286i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(11320i, u_input.a.x, 1i, u_input.a.x))), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -44632i)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    return vec2<bool>(select(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(global2.a, global2.a, true, global0.a), vec4<bool>(true, arg_2.a, true, arg_2.a)), !vec4<bool>(arg_2.a, true, false, arg_2.a), !vec4<bool>(true, false, global0.a, true))), arg_2.a, arg_2.a), true);
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(true);
    let var_1 = global1[_wgslsmith_index_u32(~arg_0.x, 30u)];
    let var_2 = Struct_1(_wgslsmith_mult_u32(0u, u_input.c), var_1.b, !(!select(select(var_1.c, var_1.c, vec4<bool>(true, global0.a, false, var_0.a)), var_1.c, var_1.c.x)), func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(680f, 1060f, -698f, -1584f) * vec4<f32>(-898f, 1112f, 1187f, -1287f))))), var_0, func_2(var_1.b.xyw), vec2<u32>(4294967295u, var_1.a) | vec2<u32>(~4294967295u, _wgslsmith_div_u32(9583u, 1u))));
    var var_3 = func_2(vec3<i32>(var_1.b.x, ~(-_wgslsmith_dot_vec4_i32(var_1.b, vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 29381i))), ~_wgslsmith_mult_i32(var_2.b.x, var_2.b.x)));
    let var_4 = var_2;
    return all(select(vec3<bool>(true, true, (var_1.b.x >> (17356u % 32u)) > _wgslsmith_dot_vec4_i32(vec4<i32>(23037i, var_4.b.x, u_input.a.x, var_2.b.x), var_1.b)), select(!vec3<bool>(true, var_1.c.x, var_4.c.x), vec3<bool>(global2.a, true, true), select(!vec3<bool>(false, false, var_0.a), select(var_1.c.xxw, vec3<bool>(true, var_4.d.x, var_0.a), false), true)), var_4.c.zwz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(false, func_1(~vec4<u32>(7693u, 22688u, 10495u, 1u))), vec2<bool>(global2.a, true), vec2<bool>(true, false)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1892f - 102f), _wgslsmith_f_op_f32(770f - -1000f))), func_2(~(vec3<i32>(u_input.a.x, u_input.a.x, -1i) << (vec3<u32>(4294967295u, u_input.c, 36897u) % vec3<u32>(32u)))), func_2((vec3<i32>(-11011i, 0i, u_input.a.x) & vec3<i32>(-1292i, -2147483647i, 0i)) ^ (vec3<i32>(1i, -32945i, u_input.a.x) >> (vec3<u32>(u_input.c, u_input.b.x, 1u) % vec3<u32>(32u)))), u_input.b | (abs(u_input.b) | u_input.b)), true || global0.a);
    var var_1 = select(true, all(vec3<bool>(global2.a, false, any(!vec3<bool>(false, false, global2.a)))), 32815u >= ~u_input.b.x);
    let var_2 = Struct_1(u_input.c, reverseBits(firstTrailingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 20959i, 10473i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)))), !select(!(!vec4<bool>(global2.a, var_0.x, true, true)), !select(vec4<bool>(false, global2.a, global0.a, true), vec4<bool>(true, global0.a, true, global2.a), global0.a), false), select(!vec2<bool>(true, any(vec4<bool>(true, false, var_0.x, global0.a))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, 1388f, 2055f, -1555f)), func_2(vec3<i32>(5669i, u_input.a.x, -45839i) & vec3<i32>(u_input.a.x, 2147483647i, 2147483647i)), Struct_2(true), ~vec2<u32>(34731u, u_input.b.x)), func_2(select(vec3<i32>(-47618i, -1i, u_input.a.x), -vec3<i32>(0i, u_input.a.x, u_input.a.x), !var_0.x)).a));
    let var_3 = all(vec3<bool>(true, true, func_2(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -10062i), i32(-1i) * -24934i, u_input.a.x)).a));
    var var_4 = func_2(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_2.b.x, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 26538i), var_2.b.xzx), select(vec3<i32>(32244i, 20619i, 1i), vec3<i32>(u_input.a.x, -1i, -51712i), var_2.c.zzx))));
    let var_5 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, 65543i), 1i), var_2.b.x), ~(-var_2.b.x ^ (u_input.a.x | 2147483647i)) ^ -_wgslsmith_dot_vec3_i32(var_2.b.xyw, vec3<i32>(-1i, var_2.b.x, -38591i)));
    let var_6 = u_input.a.x << (_wgslsmith_mod_u32(~1u, 1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -8557i), ~u_input.a.x), var_2.b.yw), select(abs(_wgslsmith_mult_i32(u_input.a.x, -24467i)) | _wgslsmith_mod_i32(~u_input.a.x, -11736i), ~u_input.a.x, var_2.d.x), ~var_2.b.x >> (var_2.a % 32u), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-349f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(950f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1584f - _wgslsmith_div_f32(462f, 974f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(917f + -1013f))), _wgslsmith_f_op_f32(-1513f - -165f)));
}

