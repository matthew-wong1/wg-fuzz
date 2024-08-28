struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 29> = array<i32, 29>(46915i, 13793i, -1i, 8099i, 12077i, -18975i, 2147483647i, 98324i, i32(-2147483648), 26938i, 2147483647i, 2432i, 1i, -27945i, -24695i, i32(-2147483648), -1i, 1i, -30028i, -1i, -8148i, 1i, -24110i, -1i, 1i, -6582i, 46857i, 1i, 1i);

var<private> global2: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(4294967295u, 1u, 21050u), vec3<u32>(27224u, 52199u, 3023u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(53180u, 7564u, 26162u), vec3<u32>(4294967295u, 70171u, 43462u), vec3<u32>(0u, 40596u, 34016u), vec3<u32>(1u, 58402u, 0u), vec3<u32>(0u, 10348u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 84970u), vec3<u32>(43855u, 7898u, 1u), vec3<u32>(1u, 72075u, 1u), vec3<u32>(30284u, 4294967295u, 4294967295u), vec3<u32>(47576u, 38871u, 110174u), vec3<u32>(19607u, 19316u, 1u), vec3<u32>(1u, 69149u, 4294967295u), vec3<u32>(9507u, 10110u, 0u), vec3<u32>(4294967295u, 25850u, 0u), vec3<u32>(55437u, 1u, 56626u), vec3<u32>(4294967295u, 1u, 37246u), vec3<u32>(4294967295u, 4294967295u, 16725u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 7216u, 4294967295u), vec3<u32>(1u, 95875u, 4294967295u), vec3<u32>(114572u, 4294967295u, 0u), vec3<u32>(4146u, 25626u, 1u), vec3<u32>(47086u, 17728u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    global4 = array<Struct_1, 11>();
    var var_0 = Struct_1(vec4<bool>(firstTrailingBit(~0i) != arg_2.d.x, !all(arg_2.a), false, all(!(!arg_2.a))), firstLeadingBit(global3.b) << (global3.c.x % 32u), (abs(vec2<u32>(global3.c.x, u_input.b)) ^ ~_wgslsmith_mod_vec2_u32(global0.xy, vec2<u32>(global0.x, u_input.a.x))) << (~firstLeadingBit(vec2<u32>(arg_2.b, 4294967295u)) % vec2<u32>(32u)), arg_2.d);
    let var_1 = select(!arg_2.a.ywz, select(select(select(vec3<bool>(arg_2.a.x, global3.a.x, true), select(global3.a.wwy, vec3<bool>(var_0.a.x, false, true), var_0.a.zxw), var_0.a.x), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), global3.a.zww, select(false || select(true, false, true), !(4294967295u < global0.x), true)), all(select(select(var_0.a.zw, !vec2<bool>(global3.a.x, false), select(vec2<bool>(true, arg_1), global3.a.zy, vec2<bool>(true, false))), !global3.a.xy, vec2<bool>(true, any(vec4<bool>(true, arg_1, true, false))))));
    global1 = array<i32, 29>();
    global2 = array<vec3<u32>, 28>();
    return _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32((vec2<i32>(48094i, global3.d.x) | abs(vec2<i32>(-1i, -1i))) << (min(reverseBits(u_input.a), vec2<u32>(u_input.a.x, 1447u)) % vec2<u32>(32u)), u_input.e), var_0.d.zx);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(-(~max(_wgslsmith_add_i32(44539i, arg_2.d.x), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_0, 29u)], -8231i, arg_1))));
    var var_1 = global4[_wgslsmith_index_u32(863u, 11u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~reverseBits(select(global0.x, global0.x, var_1.a.x))), ~abs(~max(15736u, global0.x))), 11u)];
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(min(~global1[_wgslsmith_index_u32(1u, 29u)], 12002i), _wgslsmith_dot_vec2_i32(func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 832f, -1000f))), true, Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, true, global3.a.x), 1u, var_2.c, vec3<i32>(31857i, var_1.d.x, -2147483647i))), _wgslsmith_mod_vec2_i32(u_input.d.zx, vec2<i32>(arg_1, -2147483647i)) ^ arg_2.d.yx)), 3504i);
    let var_4 = Struct_1(select(select(!(!vec4<bool>(false, true, var_2.a.x, global3.a.x)), vec4<bool>(global3.a.x, all(var_2.a.yxy), true, !var_2.a.x), !vec4<bool>(var_2.a.x, var_1.a.x, arg_2.a.x, global3.a.x)), !(!select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, arg_2.a.x), var_2.a, var_1.a)), any(arg_2.a.yx)), min(reverseBits(1u) ^ (~28929u << (global0.x % 32u)), ~(~(~arg_0))), var_2.c, ~abs(vec3<i32>(select(var_3, -4089i, true), _wgslsmith_div_i32(-12349i, 64515i), func_3(vec3<f32>(-1130f, -488f, -1048f), false, global4[_wgslsmith_index_u32(0u, 11u)]).x)));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_1(select(select(vec4<bool>(false, global3.a.x == false, select(false, arg_0.a.x, arg_0.a.x), global3.a.x), arg_0.a, !(!vec4<bool>(false, false, arg_0.a.x, false))), global3.a, !(!arg_0.a.x && any(vec4<bool>(false, arg_0.a.x, true, global3.a.x)))), ~_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 35189u, global3.c.x), vec4<u32>(arg_1.x, global3.b, 1u, 72422u))), _wgslsmith_add_u32(15061u & u_input.a.x, arg_1.x)), _wgslsmith_div_vec2_u32(~abs(vec2<u32>(19999u, 66187u)), global0.xy), select(countOneBits(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -9036i, -2147483647i, global3.d.x), vec4<i32>(u_input.e.x, u_input.d.x, 0i, global3.d.x)), -2147483647i)), -(vec3<i32>(global1[_wgslsmith_index_u32(1u, 29u)], u_input.c, -24990i) << (~vec3<u32>(u_input.a.x, 57065u, 18449u) % vec3<u32>(32u))), false));
    var var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.d.x, -33506i, arg_0.d.x, u_input.d.x), ~(-vec4<i32>(31366i, -84946i, global3.d.x, 2147483647i) >> (vec4<u32>(global0.x, 4294967295u, var_0.c.x, arg_0.b) % vec4<u32>(32u)))) ^ -firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 43004i, -40091i, global3.d.x), vec4<i32>(40591i, global1[_wgslsmith_index_u32(arg_0.b, 29u)], -1i, -27694i)), vec4<i32>(36692i, var_0.d.x, arg_0.d.x, u_input.e.x)));
    var var_2 = 13414u;
    global4 = array<Struct_1, 11>();
    let var_3 = Struct_1(global3.a, arg_1.x, var_0.c, abs(~countOneBits(func_2(global0.x, var_1.x, global4[_wgslsmith_index_u32(u_input.b, 11u)]).d)));
    return max(-min(-64893i, var_3.d.x) & 1i, -26768i);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(~u_input.c, -func_4(func_2(global3.b, global3.d.x, Struct_1(vec4<bool>(false, true, arg_0.x, true), 15233u, vec2<u32>(u_input.b, 4294967295u), u_input.d)), max(global0.xz, u_input.a)), (func_4(global4[_wgslsmith_index_u32(15517u, 11u)], global3.c) | ~u_input.c) & ~global3.d.x) << (vec3<u32>(~_wgslsmith_sub_u32(~53436u, global3.c.x), global0.x, global0.x) % vec3<u32>(32u));
    return global4[_wgslsmith_index_u32(global3.b, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(0u, 11u)];
    var var_1 = !var_0.a;
    let var_2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.d.x, -1i, ~global3.d.x), reverseBits(reverseBits(_wgslsmith_sub_vec3_i32(select(var_0.d, vec3<i32>(global3.d.x, 5671i, u_input.d.x), var_1.www), vec3<i32>(6849i, var_0.d.x, u_input.d.x)))));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 29u)];
    let var_4 = func_1(!var_1.wzw);
    var var_5 = func_1(func_2(94424u, func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(608f, -544f, -202f))))), func_2(_wgslsmith_sub_u32(1u, global0.x), var_2.x & global3.d.x, Struct_1(vec4<bool>(true, global3.a.x, true, global3.a.x), u_input.b, u_input.a, vec3<i32>(-27502i, -2147483647i, 1i))).a.x, func_1(func_2(26114u, var_4.d.x, var_4).a.xxx)).x, func_2(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(4294967295u, global0.x), ~767u), _wgslsmith_clamp_i32(2147483647i, var_2.x, global3.d.x) ^ -44476i, var_4)).a.wyw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_4.d.x, -var_2.x, var_5.d.x & 1i, _wgslsmith_mod_i32(var_4.d.x, 0i))), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, var_0.d.x, 2147483647i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(37862i, var_2.x, var_0.d.x, var_2.x), vec4<i32>(-2147483647i, global3.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -2147483647i))), ~vec4<i32>(0i, global3.d.x, var_4.d.x, u_input.c), all(!var_1.wzx)), (vec4<i32>(1i, var_5.d.x, -51386i, -2147483647i) & countOneBits(vec4<i32>(18779i, var_4.d.x, -26892i, var_5.d.x))) >> (countOneBits(vec4<u32>(5315u, 38997u, 1u, 4479u)) % vec4<u32>(32u))), ~global1[_wgslsmith_index_u32(~(~max(var_0.c.x, global0.x)), 29u)]);
}

